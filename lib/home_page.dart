import 'package:atas_mobile/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              // Add a test logo
              const Text(
                "AtasR",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 19.776),
              Image.asset(
                "assets/signupman.png",
                width: 200,
                height: 211,
              ),
              const SizedBox(height: 19.776),
              const Text(
                "Welcome to AtasR",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 0),
              Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/switch.svg'),
                        const SizedBox(width: 5),
                        const Text(
                          "Discover exciting job opportunities       \n"
                          "tailored to your skills and interests.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/switch.svg'),
                        const SizedBox(width: 5),
                        const Text(
                          "Search, apply, and connect with top       \n"
                          "employers in your industry.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/switch.svg'),
                      const SizedBox(width: 5),
                      const Text(
                        "Your Career move is just a tap away.      ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
              const SizedBox(height: 15),
              const Button(),
            ],
          ),
        ),
      ),
    );
  }
}
