import 'package:coconut_app/log_in/components/info.dart';
import 'package:flutter/material.dart';

import 'components/heading_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
