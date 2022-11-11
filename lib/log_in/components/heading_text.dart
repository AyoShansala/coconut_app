import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 15.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          const Center(
            child: Text(
              "Log In",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
