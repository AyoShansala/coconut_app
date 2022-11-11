import 'package:flutter/material.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  AccountCheck({
    required this.login,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "New User ? " : "Already have an Account ? ",
          style: const TextStyle(
            fontSize: 14.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Create an Account " : "Log In",
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 50.0,
        )
      ],
    );
  }
}
