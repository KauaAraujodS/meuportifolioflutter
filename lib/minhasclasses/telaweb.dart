import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'line_chart_sample1.dart';
import 'line_chart_sample2.dart';
import 'package:chart_sparkline/chart_sparkline.dart';

class TelaWeb extends StatefulWidget {
  const TelaWeb({super.key});

  @override
  State<TelaWeb> createState() => _TelaWebState();
}

class _TelaWebState extends State<TelaWeb> {
  var data = [
    0.0,
    1.0,
    0.5,
    1.7,
    0.5,
    1.5,
  ];

  var data1 = [
    1.3,
    1.1,
    1.4,
    1.5,
    1.42,
    1.5,
    1.4,
  ];
  var data2 = [
    1.0,
    1.15,
    1.1,
    1.5,
    1.4,
    1.5,
    1.2,
  ];
  var datapontos1 = [
    1.3,
    1.15,
    1.1,
    1.5,
    1.4,
    1.5,
    1.9,
  ];
  var datapontos2 = [
    0.0,
    1.5,
    1.1,
    1.1,
    1.5,
    1.4,
    1.5,
    1.2,
    1.9,
    1.5,
  ];

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      tileMode: TileMode.clamp,
      colors: <Color>[Color(0xff00c6e9), Color(0xff08df9c)],
    ).createShader(
      Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
    );

    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            child: Column(
              children: [
                Container(
                  color: Color(0xff12b2d4),
                  height: 100,
                  child: Center(
                    child: Icon(
                      Icons.menu_rounded,
                      color: Color(0xffdaffff),
                      size: 60,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff00c6e9),
                          Color(0xff08df9c),
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 130),
                        ),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                        ),
                        Icon(
                          Icons.signal_cellular_alt,
                          color: Colors.white,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                        ),
                        Icon(
                          Icons.mode_comment_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 35,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                        ),
                        Icon(
                          Icons.error,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 94,
          child: Scaffold(
            backgroundColor: Color(0xffe6f4f4),
            appBar: PreferredSize(
              child: Container(
                height: 100,
                color: Color(0xffdae8e8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 35),
                        ),
                        Text(
                          "Oi, Arthur!",
                          style: TextStyle(
                            color: Color(0xff95a2a8),
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                        ),
                        Icon(
                          Icons.account_circle,
                          size: 50,
                          color: Color(0xfffbfcfe),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Icon(
                          Icons.notifications_active,
                          size: 50,
                          color: Color(0xfffbfcfe),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      decoration: BoxDecoration(
                        color: Color(0xfffbfcfe),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      width: 250,
                      height: 40,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                          ),
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Color(0xffd3d1d2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              preferredSize: Size(double.infinity, 100),
            ),
            body: Container(
              padding:
                  EdgeInsets.only(top: 25, bottom: 25, right: 75, left: 75),
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 15,
                children: [
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 1,
                  //   mainAxisCellCount: 1,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //     child: Row(
                  //       children: [
                  //         Text(
                  //           "Earnings",
                  //           style: TextStyle(fontSize: 20),
                  //         ),
                  //         Row(
                  //           children: [
                  //             Text(
                  //               "R\024 1523",
                  //               style: TextStyle(
                  //                 fontSize: 20,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
                    //mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 42),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Earnings',
                                style: new TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffacb0b3),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                          ),
                          Row(
                            children: [
                              Text(
                                'R\u0024 3.675.906,86',
                                style: new TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                'Muito dinheiro',
                                style: new TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffacb0b3),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Sparkline(
                              data: data,
                              useCubicSmoothing: true,
                              cubicSmoothingFactor: 0.2,
                              lineWidth: 3,
                              lineGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xff00c6e9),
                                  Color(0xff08df9c),
                                ],
                              ),
                            ),
                            // child: Image.network(
                            //   "https://uploads.sitepoint.com/wp-content/uploads/2016/05/1463905569line-linear.png",
                            //   height: 121,
                            //   width: 200,
                            // ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
                    //mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 42,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Downloads',
                                style: new TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffacb0b3),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                          ),
                          Row(
                            children: [
                              Text(
                                '12,242,567',
                                style: new TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                'Muitos downloads',
                                style: new TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffacb0b3),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 2,
                              bottom: 18,
                            ),
                            child: Sparkline(
                              data: data1,
                              useCubicSmoothing: true,
                              cubicSmoothingFactor: 0.2,
                              lineWidth: 3,
                              lineGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xff00c6e9),
                                  Color(0xff08df9c),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    // child: Container(
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Text(
                    //             'Downloads',
                    //             style: new TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.bold,
                    //               color: Color(0xffacb0b3),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: 25),
                    //       ),
                    //       Row(
                    //         children: [
                    //           Text(
                    //             '1,242,540',
                    //             style: new TextStyle(
                    //                 fontSize: 30,
                    //                 fontWeight: FontWeight.bold,
                    //                 foreground: Paint()
                    //                   ..shader = linearGradient),
                    //           ),
                    //         ],
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: 15),
                    //       ),
                    //       Row(
                    //         children: [
                    //           Text(
                    //             'Muito dinheiro',
                    //             style: new TextStyle(
                    //               fontSize: 16,
                    //               fontWeight: FontWeight.bold,
                    //               color: Color(0xffacb0b3),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: 5),
                    //       ),
                    //       Container(
                    //         padding: EdgeInsets.all(5),
                    //         child: Sparkline(
                    //           data: data,
                    //           useCubicSmoothing: true,
                    //           cubicSmoothingFactor: 0.2,
                    //           lineWidth: 3,
                    //           lineGradient: LinearGradient(
                    //             begin: Alignment.centerLeft,
                    //             end: Alignment.centerRight,
                    //             colors: [
                    //               Color(0xff00c6e9),
                    //               Color(0xff08df9c),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    // ),
                  ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
                    //mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 42,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Favorites',
                                style: new TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffacb0b3),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25),
                          ),
                          Row(
                            children: [
                              Text(
                                '130,439',
                                style: new TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..shader = linearGradient),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                'Muitos favoritees',
                                style: new TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffacb0b3),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 2,
                              bottom: 18,
                            ),
                            child: Sparkline(
                              data: data2,
                              useCubicSmoothing: true,
                              cubicSmoothingFactor: 0.2,
                              lineWidth: 3,
                              lineGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xff00c6e9),
                                  Color(0xff08df9c),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent:
                        MediaQuery.of(context).size.height * 0.58 + 10,
                    //mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                          right: 40, left: 40, bottom: 35, top: 35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recentes",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffc8cccf),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xfff3f3f3),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Projetos recentes 0",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    Text(
                                      "11 jan.2023",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    // cfcfd1
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Os novos projetos vão ser colocadas sempre\naqui nesse container,  pois aqui é o espaço\npara colocar os mesmos.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xffa4a8ab),
                                      ),
                                    ),
                                    // Color.fromARGB(255, 93, 94, 95)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xfff3f3f3),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Projetos recentes 1",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    Text(
                                      "12 jan.2023",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    // cfcfd1
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Os novos projetos vão ser colocadas sempre\naqui nesse container,  pois aqui é o espaço\npara colocar os mesmos.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xffa4a8ab),
                                      ),
                                    ),
                                    // Color.fromARGB(255, 93, 94, 95)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xfff3f3f3),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Projetos recentes 2",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    Text(
                                      "15 jan.2023",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    // cfcfd1
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Os novos projetos vão ser colocadas sempre\naqui nesse container,  pois aqui é o espaço\npara colocar os mesmos.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xffa4a8ab),
                                      ),
                                    ),
                                    // Color.fromARGB(255, 93, 94, 95)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            height: 110,
                            decoration: BoxDecoration(
                              color: Color(0xfff3f3f3),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Projetos recentes 3",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    Text(
                                      "25 jan.2023",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 93, 94, 95),
                                      ),
                                    ),
                                    // cfcfd1
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Os novos projetos vão ser colocadas sempre\naqui nesse container,  pois aqui é o espaço\npara colocar os mesmos.",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Color(0xffa4a8ab),
                                      ),
                                    ),
                                    // Color.fromARGB(255, 93, 94, 95)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.56,
                    //mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.all(35),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "ALGUMAS COISAS :)",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0c8cccf),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 1",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "90",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 2",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                              ),
                              Text(
                                "120",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 3",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "200",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 4",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "340",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 5",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "457",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 6",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "580",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 7",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "610",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 8",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "680",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 9",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "746",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 10",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "811",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 11",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "922",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 12",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "980",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Alguma coisa 13",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "1000",
                                style: TextStyle(
                                  color: Color(0xff35314f),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  StaggeredGridTile.extent(
                    crossAxisCellCount: 2,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
                    //mainAxisCellCount: 1,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 20, left: 30, right: 50, bottom: 30),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recentes",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Container(
                            height: 115,
                            margin: EdgeInsets.only(left: 25, right: 60),
                            child: Stack(
                              children: [
                                Container(),
                                Stack(
                                  children: [
                                    Container(
                                      child: Sparkline(
                                        lineColor: Colors.yellow,
                                        data: datapontos1,
                                        pointsMode: PointsMode.all,
                                        pointColor: Colors.amber,
                                        pointSize: 8.0,
                                      ),
                                    ),
                                    Container(
                                      child: Sparkline(
                                        data: datapontos2,
                                        pointsMode: PointsMode.all,
                                        pointColor: Colors.blue,
                                        pointSize: 8.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      color: Colors.yellow,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                    ),
                                    Text('2022'),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      color: Colors.blue,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                    ),
                                    Text('2023'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 2,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
                    //mainAxisCellCount: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recentes",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  StaggeredGridTile.extent(
                    crossAxisCellCount: 1,
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
                    //mainAxisCellCount: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Recentes",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 1,
                  //   mainAxisCellCount: 1,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 1,
                  //   mainAxisCellCount: 1,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 1,
                  //   mainAxisCellCount: 2,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 1,
                  //   mainAxisCellCount: 2,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 2,
                  //   mainAxisCellCount: 1,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 2,
                  //   mainAxisCellCount: 1,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                  // StaggeredGridTile.count(
                  //   crossAxisCellCount: 4,
                  //   mainAxisCellCount: 2,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadiusDirectional.circular(30),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
