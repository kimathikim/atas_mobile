import 'package:flutter/material.dart';
import 'package:atas_mobile/clipper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:atas_mobile/button2.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                          // width of the screen
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
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 3),
                // allign left
                margin: const EdgeInsets.only(right: 200),
                child: const Text(
                  "First name",
                  style: TextStyle(
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
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 5,
                          offset: const Offset(0.0, 5.0),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 3),
                // allign left
                margin: const EdgeInsets.only(right: 200),
                child: const Text(
                  "Last name",
                  style: TextStyle(
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
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 5,
                          offset: const Offset(0.0, 5.0),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 3),
                // allign left
                margin: const EdgeInsets.only(right: 200),
                child: const Text(
                  "Email",
                  style: TextStyle(
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
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 5,
                          offset: const Offset(0.0, 5.0),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white)),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 3),
                // allign left
                margin: const EdgeInsets.only(right: 200),
                child: const Text(
                  "Password",
                  style: TextStyle(
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
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        offset: const Offset(0.0, 5.0),
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              Container(
                padding: const EdgeInsets.only(left: 70, top: 5),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/switch.svg'),
                    const SizedBox(width: 1),
                    const Text(
                      "By signing up, you will declare that you read\n"
                      "and understand the Smartr Services Agreement.",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF434847),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: const Button(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
