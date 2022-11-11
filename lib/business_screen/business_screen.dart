import 'package:coconut_app/coconut_toddy/toddy_screen.dart';
import 'package:coconut_app/coir_fiber/coir_fiber_screen.dart';
import 'package:coconut_app/dehusked_coconuts/dehusked_screen.dart';
import 'package:coconut_app/king_coconut/king_screen.dart';
import 'package:flutter/material.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _Page_4State();
}

class _Page_4State extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 119, 99),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 165, 119, 99),
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(left: 7),
          alignment: Alignment.bottomLeft,
          child: const Text(
            "Select Your Business Category",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 25, right: 25),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => CoirFiberScreen()),
                      );
                    },
                    child: Container(
                      //height: 150,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                              height: 115,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 0, 0, 0)
                                          .withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  image: DecorationImage(
                                    image: AssetImage('lib/images/coir.png'),
                                    fit: BoxFit.fill,
                                  ))),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            //width: double.infinity,
                            //height: 150,
                            child: const Text(
                              'Coir Fibre',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => DehuskedScreen()),
                      );
                    },
                    child: Container(
                      //height: 150,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                              height: 115,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 0, 0, 0)
                                          .withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage('lib/images/dehusked.png'),
                                    fit: BoxFit.fill,
                                  ))),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            //width: double.infinity,
                            //height: 150,
                            child: const Text(
                              'Dehusked Coconut',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => KingScreen()),
                      );
                    },
                    child: Container(
                      //height: 150,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                              height: 115,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 0, 0, 0)
                                          .withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  image: DecorationImage(
                                    image: AssetImage('lib/images/king.png'),
                                    fit: BoxFit.fill,
                                  ))),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            //width: double.infinity,
                            //height: 150,
                            child: const Text(
                              'King Coconut',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (c) => ToddyScreen()),
                      );
                    },
                    child: Container(
                      //height: 150,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                              height: 115,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 0, 0, 0)
                                          .withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  image: DecorationImage(
                                    image: AssetImage('lib/images/toddy.png'),
                                    fit: BoxFit.fill,
                                  ))),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            //width: double.infinity,
                            //height: 150,
                            child: const Text(
                              'Coconut Toddy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
