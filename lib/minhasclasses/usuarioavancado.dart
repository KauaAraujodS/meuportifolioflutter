import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';
import 'package:minhaprimieiraaplicacao/model/usuario_model.dart';

class UsuarioAvacado extends StatefulWidget {
  const UsuarioAvacado({super.key});

  @override
  State<UsuarioAvacado> createState() => _UsuarioAvacadoState();
}

class _UsuarioAvacadoState extends State<UsuarioAvacado> {
  Usuario primeiroUsuario = Usuario();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    primeiroUsuario.email = "araujokaua8@gmail.com";
    primeiroUsuario.nome = "Kauã Araujo";
    primeiroUsuario.telefone = 27996147343;
    primeiroUsuario.fotoDePerfil =
        "https://img.ibxk.com.br/2019/02/17/17124052466014.jpg";
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 240,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.black,
                                          spreadRadius: 1)
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        AssetImage("images/kaua.jpeg"),
                                  ),
                                ),
                                Text(
                                  primeiroUsuario.nome!,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 40),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffFC565E),
                                  Color(0xffF9579D),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 240,
                        child: Container(
                          padding: EdgeInsets.only(left: 30),
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 70),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "bio:",
                                    style: TextStyle(
                                      color: Color(0xffFF5B5F),
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Meu nome é Kauã,\ne eu estou virando programador. :)",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1),
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
                                  margin: EdgeInsets.only(right: 30, top: 150),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    gradient: new LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xffFC565E),
                                        Color(0xffF9579D),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                      ),
                                      Text(
                                        "Contact-me",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 202.5,
                        left: (MediaQuery.of(context).size.width / 2) - 150,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posts",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffFC565E),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                  ),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffF9579D),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffFC565E),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                  ),
                                  Text(
                                    "504",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffF9579D),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Follow",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffFC565E),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                  ),
                                  Text(
                                    "301",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffF9579D),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          width: 300,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
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
          ),
        ),
      ),
    );
  }
}
