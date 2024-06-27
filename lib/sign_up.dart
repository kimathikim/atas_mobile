import 'package:flutter/material.dart';
import 'package:atas_mobile/sign_up.dart';
import 'package:atas_mobile/clipper.dart';
import 'package:atas_mobile/form_fields.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _createUser(
      String email, String password, String firstName, String lastName) async {
    final url = Uri.parse('http://10.0.2.2:5000/api/v1/users');
    final headers = {
      'Content-Type': 'application/json',
      'accept': 'application/json',
    };
    final body = jsonEncode({
      'email': email,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
    });

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 201) {
        print('User created successfully');
        // Handle successful response
      } else {
        print('Failed to create user: ${response.statusCode}');
        // Handle error response
        //
      }
    } catch (e) {
      print('Error: $e');
      // Handle network or other errors
    }
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(191, 219, 209, 1.0),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Opacity(
                      opacity: 1,
                      child: ClipPath(
                        clipper: Ellipse(),
                        child: Container(
                          width: w,
                          color: const Color.fromRGBO(18, 170, 115, 1),
                          height: 212,
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 70,
                                left:
                                    MediaQuery.of(context).size.width / 2 - 45),
                            child: const Text(
                              "AtasR",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 19.776),
              const Text(
                "Let’s get you started",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF434545),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          labelText: 'First name',
                          controller: _firstNameController,
                        ),
                        CustomTextField(
                          labelText: 'Last name',
                          controller: _lastNameController,
                        ),
                        CustomTextField(
                          labelText: 'Email',
                          controller: _emailController,
                        ),
                        CustomTextField(
                          labelText: 'Password',
                          controller: _passwordController,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Assuming you have TextEditingController instances for each field
                              final email = _emailController.text;
                              final password = _passwordController.text;
                              final firstName = _firstNameController.text;
                              final lastName = _lastNameController.text;

                              _createUser(email, password, firstName, lastName);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromRGBO(19, 91, 70, 0.91)),
                          ),
                          child: Container(
                            width: 234,
                            height: 42,
                            alignment: Alignment.center,
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
