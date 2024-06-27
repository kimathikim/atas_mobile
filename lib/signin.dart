import 'package:flutter/material.dart';

import 'package:atas_mobile/sign_up.dart';
import 'package:flutter/gestures.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          backgroundColor: Colors.green, // Setting app bar color
        ),
        backgroundColor: Colors.lightGreen[100], // Setting background color
        body: const Center(
          child: LoginWidget(),
        ),
      ),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20.0),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Add login functionality here
              // For simplicity, this example does not handle authentication
              print('Login button pressed');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              backgroundColor: Colors.green, // Button color
            ),
            child: const Text('Login'),
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                const TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                  text: 'Sign Up',
                  style: const TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return false;
}
