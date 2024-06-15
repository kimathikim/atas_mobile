import 'package:flutter/material.dart';
import 'package:atas_mobile/clipper.dart';
import 'package:atas_mobile/form_fields.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                            if (_formKey.currentState!.validate()) {}
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
