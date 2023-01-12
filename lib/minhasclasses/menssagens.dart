import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/conversa/coversa.dart';

class MeMensages extends StatefulWidget {
  const MeMensages({super.key});

  @override
  State<MeMensages> createState() => _MeMensagesState();
}

class _MeMensagesState extends State<MeMensages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 200),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xffd0cbeb),
                Color(0xffd2dbfa),
              ],
            ),
          ),
          padding: EdgeInsets.only(top: 40, right: 35, left: 35, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Contatos",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Transform.rotate(
                angle: 89.5,
                child: Icon(
                  Icons.search_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffd0cbeb),
              Color(0xffd2dbfa),
            ],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffe8e9f6),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 40, right: 30, left: 30),
            child: Column(
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {
                      //redirecionando telas
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => coversaMensagem(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  //container foto 1
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.black,
                                            spreadRadius: 1),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("images/arthur.jpg"),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Arthur",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        "Online",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 169, 173),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      //redirecionando telas
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => coversaMensagem(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  //container foto 1
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.black,
                                            spreadRadius: 1),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("images/artur.jpeg"),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Arthur",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        "Online",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 169, 173),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      //redirecionando telas
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => coversaMensagem(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  //container foto 1
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.black,
                                            spreadRadius: 1),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("images/kaua.jpeg"),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Arthur",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        "Online",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 169, 173),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      //redirecionando telas
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => coversaMensagem(),
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  //container foto 1
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2,
                                            color: Colors.black,
                                            spreadRadius: 1),
                                      ],
                                    ),
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundImage:
                                          AssetImage("images/kaua.jpeg"),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Arthur",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        "Online",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 173, 169, 173),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // appBar: PreferredSize(
      //   preferredSize: Size(double.infinity, 240),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment.centerLeft,
      //         end: Alignment.centerRight,
      //         colors: [
      //           Color(0xffd0cbeb),
      //           Color(0xffd2dbfa),
      //         ],
      //       ),
      //     ),
      //     margin: EdgeInsets.all(45),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text("Contatos"),
      //         Transform.rotate(
      //           angle: 89.5,
      //           child: Icon(
      //             Icons.search_rounded,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
