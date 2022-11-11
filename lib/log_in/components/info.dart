import 'package:coconut_app/bottom_bar/btm_bar_screen.dart';
import 'package:coconut_app/widgets/button_square.dart';
import 'package:coconut_app/widgets/input_field.dart';
import 'package:flutter/material.dart';

import '../../account_check/account_check.dart';
import '../../sign_up/sign_up_screen.dart';

class Credentials extends StatelessWidget {
  final TextEditingController _emailTextController =
      TextEditingController(text: "");
  final TextEditingController _passTextController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("lib/images/logo1.png"),
              backgroundColor: Colors.brown,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "User Name",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          InputField(
            hintText: "",
            icon: Icons.email_rounded,
            obscureText: false,
            textEditingController: _emailTextController,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          const Text(
            "Password",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          InputField(
            hintText: "",
            icon: Icons.lock,
            obscureText: true,
            textEditingController: _passTextController,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: ((context) => ForgetPasswordScreen()),
                  //   ),
                  // );
                },
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
          ButtonSquare(
            text: "Log In",
            colors1: Colors.grey,
            press: () async {
              // try {
              //   await _auth.signInWithEmailAndPassword(
              //     email: _emailTextController.text.trim().toLowerCase(),
              //     password: _passTextController.text.trim(),
              //   );
              //   Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //       builder: ((context) => HomeScreen()),
              //     ),
              //   );
              // } catch (error) {
              //   Fluttertoast.showToast(
              //     msg: error.toString(),
              //   );
              // }
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (c) => BottomBarScreen(),
                ),
              );
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          AccountCheck(
            login: true,
            press: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: ((context) => SignUpScreen()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
