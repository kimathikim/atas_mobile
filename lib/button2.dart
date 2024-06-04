import 'package:atas_mobile/archive.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Jobs(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(19, 91, 70, 0.91),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Container(
          width: 274,
          height: 42,
          alignment: Alignment.center,
          child: const Text(
            "GET STARTED",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Color(0xffbfdbd1),
            ),
          ),
        ),
      ),
    );
  }
}
