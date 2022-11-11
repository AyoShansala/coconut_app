import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = (MediaQuery.of(context).size.height);
    double ScreenWidth = (MediaQuery.of(context).size.width);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 165, 119, 99),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 180,
        backgroundColor: Color.fromARGB(255, 165, 119, 99),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Hi Steve,",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Find Your Desired Online Course",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Flexible(
                  flex: 8,
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 239, 239, 239),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search_rounded,
                            color: Colors.grey,
                            size: 20,
                          ),
                          border: InputBorder.none,
                          hintText: "Find Business Category",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 66, 61, 48),
                    ),
                    height: 40,
                    width: double.infinity,
                    child: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Course Categories',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const Page_4()),
                            // );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(103, 0, 0, 0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 180,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          //physics: BouncingScrollPhysics(),
                          itemCount: product_list_1.length,
                          itemBuilder: (context, index) {
                            return MyWidget1(
                                textTitle: product_list_1[index].textTitle,
                                imgURL: product_list_1[index].imgURL);
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recent Searches',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            'View All',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(103, 0, 0, 0)),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 180,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          //physics: BouncingScrollPhysics(),
                          itemCount: product_list_2.length,
                          itemBuilder: (context, index) {
                            return MyWidget2(
                                textTitle2: product_list_2[index].textTitle2,
                                imgURL2: product_list_2[index].imgURL2);
                          }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Widget for product list view

class MyWidget1 extends StatelessWidget {
  const MyWidget1({required this.textTitle, required this.imgURL});

  final String textTitle;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
                      image: AssetImage(imgURL),
                      fit: BoxFit.fill,
                    ))),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 80,
              child: Text(
                textTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ],
    );
  }
}

// Items list 1

class ProductList1 {
  ProductList1({
    required this.textTitle,
    required this.imgURL,
  });

  final String textTitle;
  final String imgURL;
}

List<ProductList1> product_list_1 = [
  ProductList1(
    textTitle: 'Coir Fibre',
    imgURL: 'lib/images/coir.png',
  ),
  ProductList1(
    textTitle: 'Dehuske Coconut',
    imgURL: 'lib/images/dehusked.png',
  ),
  ProductList1(
    textTitle: 'King Coconut',
    imgURL: 'lib/images/king.png',
  ),
  ProductList1(
    textTitle: 'Coco Toddy',
    imgURL: 'lib/images/toddy.png',
  ),
];

// Widget for Recent Searches

class MyWidget2 extends StatelessWidget {
  const MyWidget2({required this.textTitle2, required this.imgURL2});

  final String textTitle2;
  final String imgURL2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Container(
                height: 120,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    image: DecorationImage(
                      image: AssetImage(imgURL2),
                      fit: BoxFit.fill,
                    ))),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 160,
              child: Text(
                textTitle2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Recent Searches List

class ProductList2 {
  ProductList2({
    required this.textTitle2,
    required this.imgURL2,
  });

  final String textTitle2;
  final String imgURL2;
}

List<ProductList2> product_list_2 = [
  ProductList2(
    textTitle2: 'Coconut Peat',
    imgURL2: 'lib/images/peat.png',
  ),
  // ProductList2(
  //   textTitle2: 'King Coconut',
  //   imgURL2: 'assets/coconut1.jpg',
  // ),
  // ProductList2(
  //   textTitle2: 'King Coconut',
  //   imgURL2: 'assets/coconut1.jpg',
  // ),
];
