import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MercadoLivre extends StatefulWidget {
  const MercadoLivre({super.key});

  @override
  State<MercadoLivre> createState() => _MercadoLivreState();
}

class _MercadoLivreState extends State<MercadoLivre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f0f1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.loyalty),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 75),
        child: Container(
          height: 75,
          color: Color(0xfff8e115),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                height: 30,
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      "Buscar no Mercado Livre",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              color: Color(0xfff8e115),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      "images/mercadolivre1.png",
                      width: 280,
                      height: 320,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, left: 10),
              width: double.infinity,
              height: 130,
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: 200,
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: CircleBorder(),
                            child: Center(
                              child: Icon(
                                Icons.speed,
                                size: 45,
                                color: Color(0xffb5b5b5),
                              ),
                            ),
                            color: Color(0xfffdfcfd),
                            height: 95,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "Acessórios\npara Veículos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: 200,
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: CircleBorder(),
                            child: Center(
                              child: Icon(
                                Icons.airplanemode_active_sharp,
                                size: 45,
                                color: Color(0xffb5b5b5),
                              ),
                            ),
                            color: Color(0xfffdfcfd),
                            height: 95,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "Brinquedos e\nHobbies",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: 200,
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: CircleBorder(),
                            child: Center(
                              child: Icon(
                                Icons.electric_car_rounded,
                                size: 45,
                                color: Color(0xffb5b5b5),
                              ),
                            ),
                            color: Color(0xfffdfcfd),
                            height: 95,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "Carros e\nAcessórios",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: 200,
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: CircleBorder(),
                            child: Center(
                              child: Icon(
                                Icons.speed,
                                size: 45,
                                color: Color(0xffb5b5b5),
                              ),
                            ),
                            color: Color(0xfffdfcfd),
                            height: 95,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "Acessórios\npara Veículos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.23,
                    height: 200,
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Container(
                          child: MaterialButton(
                            onPressed: () {},
                            shape: CircleBorder(),
                            child: Center(
                              child: Icon(
                                Icons.speed,
                                size: 45,
                                color: Color(0xffb5b5b5),
                              ),
                            ),
                            color: Color(0xfffdfcfd),
                            height: 95,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Text(
                          "Acessórios\npara Veículos",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) => Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xfffefefe),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.network(
                        "https://picsum.photos/id/${index + 20}/140"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
