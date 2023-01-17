import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:minhaprimieiraaplicacao/appdecoleta.dart';
import 'package:minhaprimieiraaplicacao/mapa.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class SelecionarTipoDeColeta extends StatefulWidget {
  const SelecionarTipoDeColeta({super.key});

  @override
  State<SelecionarTipoDeColeta> createState() => _SelecionarTipoDeColeta();
}

class _SelecionarTipoDeColeta extends State<SelecionarTipoDeColeta> {
  MapController controller1 = MapController(
    initMapWithUserPosition: false,
    initPosition:
        GeoPoint(latitude: -20.301897006968904, longitude: -40.290873946161124),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: OSMFlutter(
              controller: controller1,
              trackMyPosition: false,
              initZoom: 12,
              minZoomLevel: 8,
              maxZoomLevel: 19,
              stepZoom: 1.0,
              userLocationMarker: UserLocationMaker(
                personMarker: MarkerIcon(
                  icon: Icon(
                    Icons.location_history_rounded,
                    color: Colors.red,
                    size: 48,
                  ),
                ),
                directionArrowMarker: MarkerIcon(
                  icon: Icon(
                    Icons.double_arrow,
                    size: 48,
                  ),
                ),
              ),
              roadConfiguration: RoadConfiguration(
                startIcon: MarkerIcon(
                  icon: Icon(
                    Icons.person,
                    size: 64,
                    color: Colors.brown,
                  ),
                ),
                roadColor: Colors.yellowAccent,
              ),
              markerOption: MarkerOption(
                defaultMarker: MarkerIcon(
                  icon: Icon(
                    Icons.person_pin_circle,
                    color: Colors.blue,
                    size: 56,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PointerInterceptor(
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => telaMapa(),
                            ),
                          );
                        }),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xff00b299),
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  PointerInterceptor(
                    child: Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xfff5f6f6),
                      ),
                      child: IconButton(
                        onPressed: (() {
                          controller1.currentLocation();
                        }),
                        icon: Icon(
                          Icons.my_location,
                          color: Color(0xff676767),
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              PointerInterceptor(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75 + 27.5,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.only(
                            right: 30,
                            left: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.height * 0.75,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 25,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      color: Color(0xffe7e7e7),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "What are we picking up",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 55, 68, 73),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 189, 187, 187)
                                                  .withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 0.6,
                                          offset: Offset(1, 2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xfff2f2f2),
                                    ),
                                    width: 150,
                                    height: 190,
                                    child: Container(
                                      margin: EdgeInsets.all(25),
                                      color: Color(0xfff2f2f2),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            size: 85,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Text(
                                            "DOMESTIC\nWASTE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 189, 187, 187)
                                                  .withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 0.6,
                                          offset: Offset(1, 2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xfff2f2f2),
                                    ),
                                    width: 150,
                                    height: 190,
                                    child: Container(
                                      margin: EdgeInsets.all(25),
                                      color: Color(0xfff2f2f2),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.flag,
                                            size: 85,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Text(
                                            "MEDICAL WASTE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 189, 187, 187)
                                                  .withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 0.6,
                                          offset: Offset(1, 2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xfff2f2f2),
                                    ),
                                    width: 150,
                                    height: 190,
                                    child: Container(
                                      margin: EdgeInsets.all(25),
                                      color: Color(0xfff2f2f2),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            size: 85,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Text(
                                            "SORTED WASTE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 189, 187, 187)
                                                  .withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 0.6,
                                          offset: Offset(1, 2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xfff2f2f2),
                                    ),
                                    width: 150,
                                    height: 190,
                                    child: Container(
                                      margin: EdgeInsets.all(25),
                                      color: Color(0xfff2f2f2),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.flag,
                                            size: 85,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Text(
                                            "HAZARDOUS WASTE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
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
                                  Container(
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color.fromARGB(255, 189, 187, 187)
                                                  .withOpacity(0.3),
                                          spreadRadius: 1,
                                          blurRadius: 0.6,
                                          offset: Offset(1, 2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xfff2f2f2),
                                    ),
                                    width: 150,
                                    height: 190,
                                    child: Container(
                                      margin: EdgeInsets.all(25),
                                      color: Color(0xfff2f2f2),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.flag,
                                            size: 85,
                                            color: Colors.black,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Text(
                                            "HAZARDOUS WASTE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Color(0xff00b299),
                                    height: 5,
                                    width: 60,
                                  ),
                                  Container(
                                    color: Colors.grey,
                                    width: 370,
                                    height: 5,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
