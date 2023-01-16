import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class telaMapa extends StatefulWidget {
  const telaMapa({super.key});

  @override
  State<telaMapa> createState() => _telaMapaState();
}

class _telaMapaState extends State<telaMapa> {
  MapController controller = MapController(
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
              controller: controller,
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
              )),
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
                          Navigator.of(context).pop();
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
                          controller.currentLocation();
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
                  height: MediaQuery.of(context).size.height * 0.30 + 27.5,
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
                          height: MediaQuery.of(context).size.height * 0.30,
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
                                    "Where will the collection be\nmade?",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 55, 68, 73),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 146, 146, 146)
                                          .withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: Offset(1, 4),
                                    ),
                                  ],
                                ),
                                width: 400,
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    suffixIcon: Icon(Icons.close),
                                    //borda padrao, quando cursor n esta dentro do campo
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 3,
                                        color: Colors.white.withOpacity(0.7),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),

                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff6659B8),
                                    ),
                                    floatingLabelStyle: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff6659B8),
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PrimeiraWidget(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "NEXT",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      width: 330,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(0xff00b299),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                color: Color(0xff00b299),
                              ),
                              child: IconButton(
                                onPressed: (() {
                                  Navigator.of(context).pop();
                                }),
                                icon: Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
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
