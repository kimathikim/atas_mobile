import 'package:flutter/material.dart';
import 'package:atas_mobile/clipper.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
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
                          width: 375,
                          color: const Color.fromRGBO(18, 170, 115, 1),
                          height: 212,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 70, left: 375 / 2 - 50),
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
              const Text("First name",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434847),
                  )),
              Container(
                  width: 274,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              const Text("First name",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434847),
                  )),
              Container(
                  width: 274,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              const Text("First name",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434847),
                  )),
              Container(
                  width: 274,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              const Text("First name",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434847),
                  )),
              Container(
                  width: 274,
                  height: 42,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              const Text(
                  "By signing up, you will declare that you read and understand the Smartr Services Agreement.",
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434847),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
