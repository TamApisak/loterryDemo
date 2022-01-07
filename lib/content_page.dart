import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_detail_page.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List list = [];
  List info = [];
  _readData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/recent.json")
        .then((s) {
      setState(() {
        list = json.decode(s);
      });
    });
    await DefaultAssetBundle.of(context)
        .loadString("json/detail.json")
        .then((s) {
      setState(() {
        info = json.decode(s);
      });
    });
  }

  @override
  void initState() {
    _readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    int _currentIndex = 0;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        color: Color(0xFFc5e5f3),
        child: Column(
          children: [
            Expanded(
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 10,
                        itemBuilder: (_, i) {
                          return Container(
                            width: width,
                            height: 150,
                            margin: const EdgeInsets.only(
                                left: 25, right: 25, bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Row(
                                children: [
                                  //ส่วนด้านหน้า บริเวณโลโก้
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      bottom: 20,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // CircleAvatar(
                                        //   radius: 40,
                                        //   backgroundImage:
                                        //       AssetImage("img/background.jpg"),
                                        // ),
                                        Container(
                                          width: 70,
                                          height: 70,
                                          child: Image(
                                            image:
                                                AssetImage("img/logo-glo.png"),
                                          ),
                                        ),
                                        Container(
                                          width: 55,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "80",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.pink[200]),
                                              ),
                                              Text(
                                                "บาท",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //พื้นที่ว่างสำหรับความยาว
                                  Expanded(child: Container()),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      //text สลากกินแบ่งรัฐบาล
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey[100],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        child: Text(
                                          "สลากกินแบ่งรัฐบาล",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.grey[500]),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   height: 2,
                                      // ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.amber[200],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3))),
                                        child: Container(
                                          padding: const EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text(
                                            "123456",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 32),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      //งวดวันที่
                                      Row(
                                        children: [
                                          //งวดวันที่
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "งวดวันที่",
                                                style: TextStyle(
                                                    color:
                                                        Colors.lightBlue[900],
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "16 มิถุนายน 2550",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),

                                          //งวดที่
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "งวดที่",
                                                style: TextStyle(
                                                    color:
                                                        Colors.lightBlue[900],
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "16",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          //ชุดที่
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "ชุดที่",
                                                style: TextStyle(
                                                    color:
                                                        Colors.lightBlue[900],
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "99",
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  //text center
                                  // Column(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  //   crossAxisAlignment:
                                  //       CrossAxisAlignment.start,
                                  //   children: [
                                  //     Text(
                                  //       "Status",
                                  //       style: TextStyle(
                                  //           color: Color(0xFFfdebb2),
                                  //           fontSize: 12,
                                  //           decoration: TextDecoration.none),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 5,
                                  //     ),
                                  //     SizedBox(
                                  //       width: 100,
                                  //       child: Text(
                                  //         "Text",
                                  //         style: TextStyle(
                                  //             color: Color(0xFF3b3f42),
                                  //             fontSize: 18,
                                  //             decoration: TextDecoration.none),
                                  //       ),
                                  //     )
                                  //   ],
                                  // ),

                                  // Container(

                                  //   width: 70,
                                  //   height: 70,
                                  //   child: Text(
                                  //     "Time",
                                  //     style: TextStyle(
                                  //         fontSize: 10,
                                  //         decoration: TextDecoration.none,
                                  //         color: Color(0xFFb2b8bb)),
                                  //   ),
                                  // ),

                                  //แทบสีชมพูด้านข้าง
                                  Container(
                                    width: 10,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          bottomRight: Radius.circular(12)),
                                      color: Colors.red[100],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }))),
          ],
        ),
      ),
    );
  }
}
