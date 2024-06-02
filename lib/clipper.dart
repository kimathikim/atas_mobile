import 'package:flutter/material.dart';

class Ellipse extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var firstControlPoint = Offset(size.width / 20, size.height - 80);
    var firstEndPoint = Offset(size.width / 2, size.height - 80);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint =
        Offset(size.width - (size.width / 20), size.height - 80);
    var secondEndPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    // var thirdPoint = Offset(size.width / 2, size.height - 20);
    // var third = Offset(size.width / 2, size.height - 100);
    // path.quadraticBezierTo(thirdPoint.dx, thirdPoint.dy, third.dx, third.dy);
    // var forthPoint = Offset(size.width - (size.width / 20), size.height - 20);
    // var forth = Offset(size.width, size.height);
    // path.quadraticBezierTo(forthPoint.dx, forthPoint.dx, forth.dx, forth.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
