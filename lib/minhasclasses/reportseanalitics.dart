import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/novaTeladia_13_01_23.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';

class reportsEAnalitics extends StatefulWidget {
  const reportsEAnalitics({super.key});

  @override
  State<reportsEAnalitics> createState() => _reportsEAnaliticsState();
}

class _reportsEAnaliticsState extends State<reportsEAnalitics> {
  var data1 = [
    1.0,
    0.9,
    1.3,
    2.0,
    1.7,
    0.8,
    1.7,
  ];
  var data2 = [
    0.0,
    0.3,
    1.43,
    1.25,
    1.7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/novatela.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff6056d1).withOpacity(0.75),
                        ),
                        padding: EdgeInsets.only(
                            right: 50, left: 50, bottom: 35, top: 40),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 40),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    width: 30,
                                    height: 30,
                                    child: IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                novaTelaDia13(),
                                          ),
                                        );
                                      },
                                      padding: EdgeInsets.only(right: 2),
                                      icon: Icon(
                                        Icons.arrow_back_ios_new_rounded,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(
                                      "images/kaua.jpeg",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Report & Analytics",
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xfff4f3f9),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Kauã Araujo",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Color(0xffb6b1f6),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20),
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
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.70,
                  color: Colors.white,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 230),
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Container(
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          TabBar(
                            indicator: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                            ),
                            tabs: [
                              Tab(
                                icon: Text(
                                  "All Time",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Tab(
                                icon: Text(
                                  "This Week",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Tab(
                                icon: Text(
                                  "Today",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              child: TabBarView(
                                children: [
                                  //pagina 1 da tabview
                                  Container(
                                    margin: EdgeInsets.all(30),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "\u002452,070.00",
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(right: 5),
                                            ),
                                            Icon(
                                              Icons.arrow_upward_rounded,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: 5),
                                            ),
                                            Text(
                                              "Total Earnings",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xffa8a8a8),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'images/fundobrancofinal.png'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          padding: EdgeInsets.only(
                                              top: 20, right: 20, left: 20),
                                          width: 400,
                                          height: 180,
                                          child: Sparkline(
                                            data: data1,
                                            useCubicSmoothing: true,
                                            cubicSmoothingFactor: 0.2,
                                            lineColor: Colors.pink,
                                            lineWidth: 3,
                                            pointsMode: PointsMode.all,
                                            pointColor: Colors.red,
                                            pointSize: 8.0,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Mon",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Tue",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Wed",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Thu",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Fri",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Sat",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Sun",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  //pagina 2 da tabview
                                  Text("Pag.2"),
                                  //pagina 3 da tabview
                                  Text("Pag.3"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                    ),
                    Container(
                      width: 10,
                      height: 2,
                      color: Color(0xff877be5),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Text(
                      "ACTIVITY",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color(0XFF877be5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Container(
                      width: 10,
                      height: 2,
                      color: Color(0xff877be5),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 25),
                  width: double.infinity,
                  height: 220,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.all(4),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrimeiraWidget(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 9),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15),
                          width: 180,
                          height: 140,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff65cd86),
                                        style: BorderStyle.solid,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                  ),
                                  Text(
                                    "SAVINGS",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff65cd86),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\u00246078.88",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/fundobrancofinal.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 20, right: 5, left: 5),
                                  width: 120,
                                  height: 100,
                                  child: Sparkline(
                                    data: data2,
                                    useCubicSmoothing: true,
                                    cubicSmoothingFactor: 0.2,
                                    lineColor: Color(0xff65cd86),
                                    lineWidth: 3,
                                    pointsMode: PointsMode.last,
                                    pointColor: Color(0xff65cd86),
                                    pointSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrimeiraWidget(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 9),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15),
                          width: 180,
                          height: 140,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xfff38a8f),
                                        style: BorderStyle.solid,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                  ),
                                  Text(
                                    "SAVINGS",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xfff38a8f),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\u00246078.88",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/fundobrancofinal.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 20, right: 5, left: 5),
                                  width: 120,
                                  height: 100,
                                  child: Sparkline(
                                    data: data2,
                                    useCubicSmoothing: true,
                                    cubicSmoothingFactor: 0.2,
                                    lineColor: Color(0xfff38a8f),
                                    lineWidth: 3,
                                    pointsMode: PointsMode.last,
                                    pointColor: Color(0xfff38a8f),
                                    pointSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrimeiraWidget(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 9),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(15),
                          width: 180,
                          height: 140,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xff7667da),
                                        style: BorderStyle.solid,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                  ),
                                  Text(
                                    "SAVINGS",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff7667da),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "\u00246078.88",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/fundobrancofinal.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 20, right: 5, left: 5),
                                  width: 120,
                                  height: 100,
                                  child: Sparkline(
                                    data: data2,
                                    useCubicSmoothing: true,
                                    cubicSmoothingFactor: 0.2,
                                    lineColor: Color(0xff7667da),
                                    lineWidth: 3,
                                    pointsMode: PointsMode.last,
                                    pointColor: Color(0xff7667da),
                                    pointSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
