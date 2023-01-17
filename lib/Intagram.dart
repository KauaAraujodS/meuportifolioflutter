import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: Container(
          padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
          color: Colors.white,
          width: double.infinity,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.camera_alt_outlined,
                  size: 30,
                ),
                Text(
                  "Istagram",
                  style: TextStyle(fontSize: 35),
                ),
                Transform.rotate(
                  angle: -0.5,
                  child: Icon(
                    Icons.send_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Divider(),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(Icons.play_arrow),
                      Text(
                        "Watch all",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 150,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    color: Colors.white,
                    width: 100,
                    height: 70,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage("images/kaua.jpeg"),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 70, left: 70),
                              width: 100,
                              height: 100,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Container(
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Your Story",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(40),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Color(0xffebd202),
                                Color(0xffed1b00),
                                Color(0xffb32f7a),
                                Color(0xff7837a8),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 6),
                          width: 85,
                          height: 85,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("images/arthur.jpg"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 9),
                        ),
                        Text("Arthur_"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                    ),
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage("images/kaua.jpeg"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                              ),
                              Container(
                                width: 100,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Kauaaraujo____",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Paisagens"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.more_horiz_rounded),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child: Image(
                      image: AssetImage("images/paisagem.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 10, right: 15),
                      width: 40,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(0.67),
                      ),
                      child: Center(
                        child: Text(
                          "1/4",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 15, right: 15),
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 50,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Icon(
                          Icons.comment_outlined,
                          size: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Transform.rotate(
                          angle: 0,
                          child: Icon(
                            Icons.send_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Row(
                      children: [
                        Container(
                          width: 7.5,
                          height: 7.5,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        Container(
                          width: 7.5,
                          height: 7.5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        Container(
                          width: 7.5,
                          height: 7.5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        Container(
                          width: 7.5,
                          height: 7.5,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(Icons.bookmark_border),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Liked by ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Arthur ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "and ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "989 others",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Arthur ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Follow ",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "@kauaaraujo____ ",
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                        Text(
                          "for more design tips.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "#paisagensdomundo #interaction #sun #instagram",
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 35,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 35,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
