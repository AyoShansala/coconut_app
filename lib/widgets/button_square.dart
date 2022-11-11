import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color colors1;

  ButtonSquare({
    required this.text,
    required this.press,
    required this.colors1,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 6.0,
          bottom: 6.0,
        ),
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: colors1,
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
