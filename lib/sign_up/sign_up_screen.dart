import 'package:coconut_app/sign_up/components/heading_text.dart';
import 'package:coconut_app/sign_up/components/info.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.brown,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeadText(),
                Credentials(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
