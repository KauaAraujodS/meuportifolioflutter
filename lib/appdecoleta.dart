import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/mapa.dart';

class appDeColeta extends StatefulWidget {
  const appDeColeta({super.key});

  @override
  State<appDeColeta> createState() => _appDeColetaState();
}

class _appDeColetaState extends State<appDeColeta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.22,
                  color: Color(0xff00b299),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello, Kauã",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "What can we do for you?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.78,
                  color: Colors.white,
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.22 - 80),
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 189, 187, 187)
                              .withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 2.5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        border: Border.all(
                          color: Color(0xff00b299),
                          width: 10,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Color(0xff00b299),
                            size: 55,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 189, 187, 187)
                                  .withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 0.6,
                              offset: Offset(1, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      width: 150,
                      height: 190,
                      child: Container(
                        margin: EdgeInsets.all(25),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 85,
                              color: Color(0xff003066),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            Text(
                              "Schedule a\nPickup",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 189, 187, 187)
                                  .withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 0.6,
                              offset: Offset(1, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      width: 150,
                      height: 190,
                      child: Container(
                        margin: EdgeInsets.all(25),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Icon(
                              Icons.flag,
                              size: 85,
                              color: Color(0xffe63632),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            Text(
                              "Report Missed\nPickup",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 189, 187, 187)
                                  .withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 0.6,
                              offset: Offset(1, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      width: 150,
                      height: 190,
                      child: Container(
                        margin: EdgeInsets.all(25),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 85,
                              color: Color(0xffff8d00),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                            ),
                            Text(
                              "Payment &\nInvoices",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => telaMapa(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 189, 187, 187)
                                    .withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 0.6,
                                offset: Offset(1, 2),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        width: 150,
                        height: 190,
                        child: Container(
                          margin: EdgeInsets.all(25),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Icon(
                                Icons.local_shipping,
                                size: 85,
                                color: Color(0xff00b299),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Text(
                                "Report Missed\nPickup",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 95,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    label: "Support",
                    icon: Icon(Icons.messenger),
                  ),
                  BottomNavigationBarItem(
                    label: "Acconut",
                    icon: Icon(Icons.person),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(
                      color: Color(0xff00b299),
                      width: 8,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Color(0xff00b299),
                        size: 37.5,
                      ),
                    ],
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
