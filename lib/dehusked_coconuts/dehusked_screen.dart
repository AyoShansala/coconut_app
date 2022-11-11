import 'package:coconut_app/dehusked_coconuts/dehusked_components/info.dart';
import 'package:flutter/material.dart';

import '../bottom_bar/btm_bar_screen.dart';

class DehuskedScreen extends StatelessWidget {
  const DehuskedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.brown,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => BottomBarScreen()),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text("Check the Quality"),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // const HeadText(),
                DehuskedInfo()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
