#!/usr/bin/env python3
"""This claass defines the database storage engine for the
immunization tracking system"""

from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, scoped_session
from os import getenv
from models.base import Base
classes = {}


class DBstorage:
    """Initialize with the MySQL database"""

    def __init__(self):
        """Initialize the data storage class"""
        AM_USER = getenv("AM_USER")
        AM_PWD = getenv("AM_PWD")
        AM_HOST = getenv("AM_HOST")
        AM_DB = getenv("AM_DB")
        self.__engine = create_engine(
            "mysql+mysqldb://{}:{}@{}/{}".format(
                AM_USER, AM_PWD, AM_HOST, AM_DB
            ),
            pool_pre_ping=True,
        )

    def all(self, cls=None):
        """query on the current database session"""
        new_dict = {}
        for clss in classes:
            if cls is None or cls is classes[clss] or cls is clss:
                objs = self.__session.query(classes[clss]).all()
                for obj in objs:
                    key = obj.__class__.__name__ + "." + obj.id
                    new_dict[key] = obj
        return new_dict

    def save(self):
        """commit all changes of the current database session"""
        self.__session.commit()

    def delete(self, obj=None):
        """delete from the current database session obj if not None"""
        if obj is not None:
            self.__session.delete(obj)

    def reload(self):
        """reloads data from the database"""
        Base.metadata.create_all(self.__engine)
        sess_factory = sessionmaker(bind=self.__engine, expire_on_commit=False)
        Session = scoped_session(sess_factory)
        self.__session = Session

    def close(self):
        """closes the session"""
        self.__session.remove()

    def get(self, cls, id):
        """get an object from the database"""
        if cls is not None and id is not None:
            obj = self.__session.query(cls).get(id)
            return obj
        return None
