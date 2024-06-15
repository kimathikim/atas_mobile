import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 3),
          margin: const EdgeInsets.only(right: 200),
          child: Text(
            labelText,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Color(0xFF434847),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          width: 274,
          height: 42,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.4),
                spreadRadius: 5,
                offset: const Offset(0.0, 5.0),
                blurRadius: 6.0,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
            validator: (value) {
              Pattern pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              if (value == null || value.isEmpty) {
                return 'Please enter $labelText';
              }
              // if value is email, check if it is a valid email
              // if the value is password, check if it is at least 6 characters long
              if (labelText == "Email") {
                RegExp regex = RegExp(pattern.toString());
                if (!regex.hasMatch(value)) return 'Enter Valid Email';
              }
              if (labelText == "Password") {
                if (value.length < 8) {
                  return (' Password must be at least 8 characters');
                } else if (!RegExp(r'(?=.*?[A-Z])').hasMatch(value)) {
                  return 'Passwords must have at least one uppercase letter';
                } else if (!RegExp(r'(?=.*?[a-z])').hasMatch(value)) {
                  return 'Passwords must have at least one lowercase letter';
                } else if (!RegExp(r'(?=.*?[0-9])').hasMatch(value)) {
                  return 'Passwords must have at least one number';
                }
              }
              // log the valuoe of the input field
              print(value);
              return null;
            },
          ),
        ),
      ],
    );
  }
}
