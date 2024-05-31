import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// create a sign up page
      // use the background color of the home page
      // use the same padding as the home page
      // create a column with a top padding of 86
      // add the Smartr logo
      // add a SizedBox with a height of 19.776073455810547
      // add the sign up image
      // add a SizedBox with a height of 19.776073455810547
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(18, 170, 115, 1),
              Color.fromRGBO(19, 91, 70, 0.81),
            ],
          ),
        ),
        padding: const EdgeInsets.only(top: 86),
        child: Center(
          child: Column(
            children: [
              Column(
                //add a top padding of 86
                children: [
                  Container(
                    child: Image.asset(
                      "assets/smartr.png",
                      width: 97.62547302246094,
                      height: 19.776073455810547,
                    ),
                  ),
                  const SizedBox(
                    height: 19.776073455810547,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/signupman.png",
                      width: 200,
                      height: 211,
                    ),
                  ),
                  const SizedBox(
                    height: 19.776073455810547,
                  ),
                  const Text(
                    "Welcome to Smartr",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 19.776073455810547,
                        ),
                        // add the sign up form
                        // add a SizedBox with a height of 19.776073455810547
                        // add the sign up button
                        // add a SizedBox with a height of 19.776073455810547
                        // add the sign in button
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
