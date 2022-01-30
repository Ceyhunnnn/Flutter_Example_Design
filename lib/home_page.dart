import "package:flutter/material.dart";
import 'package:flutter_example/const.dart';
import 'package:flutter_example/controller/controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  Sabitler sabit = Sabitler();
  Controller cont = Get.put(Controller(), tag: "cnt");

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            fixedColor: Colors.teal,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_filled_outlined), label: ""),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.document_scanner),
                label: "",
              )
            ],
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              cont.getBottomNavBarIndex(index);
            },
            currentIndex: cont.pageNo.value,
          ),
        ),
        body: Obx(
          () => IndexedStack(
            index: cont.pageNo.value,
            children: [
              HomePage(screenSize),
              Center(child: Text("Page1")),
              Center(child: Text("Page2")),
              Center(child: Text("Page3")),
            ],
          ),
        ));
  }

  Container HomePage(Size screenSize) {
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: screenSize.width * 0.1,
                  height: screenSize.height * 0.2,
                ),
                CircleAvatar(
                  child: Image.asset("assets/images/pp.jpg"),
                  backgroundColor: Colors.grey,
                  maxRadius: 25,
                ),
                SizedBox(
                  width: screenSize.width * 0.02,
                  //width:10
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style:
                          TextStyle(color: Colors.grey, fontFamily: "Cousine"),
                    ),
                    Text(
                      "Jessica",
                      style: TextStyle(
                          fontSize: 23,
                          fontFamily: "Cousine",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.view_headline_outlined,
                  size: 40,
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /*SizedBox(
                      width: 25,
                    ),*/
                Text(
                  "Upcoming consulations",
                  style: TextStyle(
                      fontFamily: "Cousine",
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.blue.shade900,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/pp.jpg"),
                                  backgroundColor: Colors.grey,
                                  maxRadius: 20,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "5:45PM",
                                      style: sabit.word,
                                    ),
                                    Text(
                                      "Dec 7",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Michael\nSimpson",
                            style: sabit.word,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.teal.shade300),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.transparent)))),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Join the call",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.blue.shade100,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/pp.jpg"),
                                  backgroundColor: Colors.grey,
                                  maxRadius: 20,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "5:45PM",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Dec 7",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Michael\nSimpson",
                            style: sabit.word,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.transparent)))),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Wait for call",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      color: Colors.grey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset("assets/images/pp.jpg"),
                                  backgroundColor: Colors.grey,
                                  maxRadius: 20,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "5:45PM",
                                      style: sabit.word,
                                    ),
                                    Text(
                                      "Dec 7",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Michael\nSimpson",
                            style: sabit.word,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.teal.shade300),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.transparent)))),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Join the call",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Patient profiles",
                  style: TextStyle(
                      fontFamily: "Cousine",
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 25),
                  CircleAvatar(
                    backgroundColor: Colors.teal.shade300,
                    maxRadius: 25,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                  SizedBox(width: 25),
                  CircleAvatar(
                    child: Image.asset("assets/images/pp.jpg"),
                    backgroundColor: Colors.grey,
                    maxRadius: 25,
                  ),
                  SizedBox(width: 25),
                  CircleAvatar(
                    child: Image.asset("assets/images/pp.jpg"),
                    backgroundColor: Colors.grey,
                    maxRadius: 25,
                  ),
                  SizedBox(width: 25),
                  CircleAvatar(
                    child: Image.asset("assets/images/pp.jpg"),
                    backgroundColor: Colors.grey,
                    maxRadius: 25,
                  ),
                  SizedBox(width: 25),
                  CircleAvatar(
                    child: Image.asset("assets/images/pp.jpg"),
                    backgroundColor: Colors.grey,
                    maxRadius: 25,
                  ),
                  SizedBox(width: 25),
                  CircleAvatar(
                    child: Image.asset("assets/images/pp.jpg"),
                    backgroundColor: Colors.grey,
                    maxRadius: 25,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
