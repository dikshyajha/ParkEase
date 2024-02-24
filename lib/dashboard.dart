// import 'dart:html';

// import 'dart:ui' show lerpDouble;

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:parkease/navbar.dart';
import 'package:parkease/sample.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  // const Dashboard({super.key});
  var height, width;
  List imgData = [
    "images/car2.png",
    "images/bike.png",
  ];
  List titles = [
    "Four_wheeler",
    "Two_wheeler",
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color.fromARGB(255, 98, 190, 236),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              height: height * 0.30,
              width: width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 35,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NavBar()),
                              );
                            },
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          // Scaffold(
                          //   drawer: NavBar(),
                          // ),
                          // ClipRRect(
                          //   child: Icon(
                          //     Icons.account_circle,
                          //     size: 50,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 70,
                        left: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // "Let's find a parking space...",
                            "Welcome, to ParkEase",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 230, 225, 225),
                              fontFamily: 'Raleway',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.75,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 238, 238),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              height: height * 0.25,
              width: width,
              padding: EdgeInsets.only(
                top: 70,
                left: 10,
                right: 10,
              ),
              child: Material(
                elevation: 0.0,
                shadowColor: Colors.blue,
                color: Colors.transparent,
                child: TextField(
                  obscureText: false, // password ko lagi true garne
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 98, 190, 236),
                            width: 2.0)),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 238, 238),
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(50),
                  //   topRight: Radius.circular(50),
                  // ),
                ),
                height: height * 0.45,
                width: width,
                // padding: EdgeInsets.only(
                //   top: 130,
                // ),
                child: (GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: imgData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sample()),
                        );
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 98, 190, 236),
                                spreadRadius: 1,
                                blurRadius: 6,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              imgData[index],
                              width: 100,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ))),
          ],
        ),
      ),
    );
  }
}
