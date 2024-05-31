import 'package:atas_mobile/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "SmartRecruiters candidate portal is now Smartr.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Enter the same login info used for your SmartrProfile",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "If login details were saved, you may need to re-save.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Why Smartr? Read here",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight
                          .w600, // Corrected the typo in FontWeight class name
                      color: Colors.white,
                    ),
                  ),
                  Stack(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: Container(
                          width: 200,
                          height: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color(0xffbfdbd1),
                          ),
                          child: const Center(
                            child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(19, 91, 70, 0.91),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
