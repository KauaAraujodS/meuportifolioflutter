import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/mercadolivre.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/segundatela.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/teladelogin.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/usuarioavancado.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/usuarios.dart';

class PrimeiraWidget extends StatefulWidget {
  const PrimeiraWidget({super.key});

  @override
  State<PrimeiraWidget> createState() => _PrimeiraWidgetState();
}

class _PrimeiraWidgetState extends State<PrimeiraWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus Projetos"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  //redirecionando telas
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SegundaTela(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff842EC6),
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 70,
                  // margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Nome:",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Clone do Nubank",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Text("Conteúdo da Tela"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  //redirecionando telas
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Usuarios(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 70,
                  // margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Nome:",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Users",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Text("Usuários/remove and add"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  //redirecionando telas
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UsuarioAvacado(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffFC565E),
                        Color(0xffF9579D),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // decoration: BoxDecoration(
                  //     color: Colors.lightBlue,
                  //     borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 70,
                  // margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Nome:",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Novo dia 06_01_23",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Text("Instagram/Followers"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  //redirecionando telas
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => telaDeLogin(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff675ebc),
                        Color(0xff35314f),
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 70,
                  margin: EdgeInsets.only(top: 10),
                  // decoration: BoxDecoration(
                  //     color: Colors.purple,
                  //     borderRadius: BorderRadius.circular(10)),
                  // width: MediaQuery.of(context).size.width * 1,
                  // height: 70,
                  // margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Nome:",
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            "Novo dia 09_01_23",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Text("Tela de Login"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: MaterialButton(
                onPressed: () {
                  //redirecionando telas
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MercadoLivre(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width * 1,
                  height: 70,
                  // margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Nome:",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Dia 10/01/23",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Text("Mercado Livre"),
                    ],
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
