import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 220,
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 50,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image.asset("images/image2.png",
                                    height: 50, width: 50, fit: BoxFit.cover)),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Innocent Mandali",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(top: 120, left: 20.0, bottom: 500),
                child: Row(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    // child: Image.asset("images/image5.png")
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Column(
                    children: [
                      Text(
                        "Play & Win",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Play by \nGuing the Pictures",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 240,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Top Quiz Categories",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 5.0,
                            child: Container(
                                decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/image2.png',
                                      height: 80,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "    Flutter    ",
                                      style: TextStyle(
                                          fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 5.0,
                            child: Container(
                                decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/image3.png',
                                      height: 80,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "    React     ",
                                      style: TextStyle(
                                          fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 5.0,
                            child: Container(
                                decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/image4.png',
                                      height: 80,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "       IOS      ",
                                      style: TextStyle(
                                          fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            elevation: 5.0,
                            child: Container(
                                decoration: BoxDecoration(color: Colors.black54,borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'images/image5.png',
                                      height: 80,
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                    Text(
                                      "    Android    ",
                                      style: TextStyle(
                                          fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
