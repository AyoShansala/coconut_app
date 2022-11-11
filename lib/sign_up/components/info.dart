import 'package:coconut_app/bottom_bar/btm_bar_screen.dart';
import 'package:flutter/material.dart';

import '../../account_check/account_check.dart';
import '../../log_in/login_screen.dart';
import '../../widgets/button_square.dart';
import '../../widgets/input_field.dart';

class Credentials extends StatefulWidget {
  const Credentials({super.key});

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {
  final TextEditingController _fullNameController =
      TextEditingController(text: "");
  final TextEditingController _emailTextController =
      TextEditingController(text: "");
  final TextEditingController _passTextController =
      TextEditingController(text: "");
  final TextEditingController _userNameController =
      TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // GestureDetector(
          //   onTap: () {
          //     //create showImagedialog...................
          //     _showImageDialog();
          //   },
          //   child: CircleAvatar(
          //     radius: 60,
          //     backgroundImage: imageFile == null
          //         ? AssetImage("lib/images/avatar.png")
          //         : Image.file(imageFile!).image,
          //   ),
          // ),
          SizedBox(
            height: size.height * 0.01,
          ),
          const Text(
            "Full Name",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          InputField(
            hintText: "",
            icon: Icons.person,
            obscureText: false,
            textEditingController: _fullNameController,
          ),
          SizedBox(
            height: size.height * 0.01,
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
            icon: Icons.person_add,
            obscureText: false,
            textEditingController: _userNameController,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          const Text(
            "Email",
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
          Column(
            children: [
              const Text(
                "I Agree with Terms and Conditions",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              ButtonSquare(
                text: "Sign Up",
                colors1: Colors.grey,
                press: () async {
                  // if (imageFile == null) {
                  //   Fluttertoast.showToast(msg: "Please Select an Image");
                  //   return;
                  // }
                  // try {
                  //   //upload image to fire storage................................
                  //   final ref = FirebaseStorage.instance
                  //       .ref()
                  //       .child('userImages')
                  //       .child(DateTime.now().toString() + '.jpg');
                  //   await ref.putFile(imageFile!);
                  //   //download uploaded image url.........................................
                  //   imageUrl = await ref.getDownloadURL();
                  //   await _auth.createUserWithEmailAndPassword(
                  //     email: _emailTextController.text.trim().toLowerCase(),
                  //     password: _passTextController.text.trim(),
                  //   );
                  //   final User? user = _auth.currentUser;
                  //   final _uid = user!.uid;
                  //   //upload user data to firestore..................................
                  //   FirebaseFirestore.instance.collection('users').doc(_uid).set({
                  //     'id': _uid,
                  //     'userimage': imageUrl,
                  //     'name': _fullNameController.text,
                  //     'email': _emailTextController.text,
                  //     'phoneNumber': _pohoneNumController.text,
                  //     'createAt': Timestamp.now(),
                  //   });
                  //   Navigator.canPop(context) ? Navigator.pop(context) : null;
                  // } catch (error) {
                  //   Fluttertoast.showToast(msg: error.toString());
                  // }
                  // //go to homepage......................................
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => HomeScreen(),
                  //   ),
                  // );
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (c) => BottomBarScreen(),
                    ),
                  );
                },
              ),
            ],
          ),

          AccountCheck(
            login: false,
            press: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
