import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:progress_border/progress_border.dart';

class telaDeLogin extends StatefulWidget {
  const telaDeLogin({super.key});

  @override
  State<telaDeLogin> createState() => _telaDeLoginState();
}

class _telaDeLoginState extends State<telaDeLogin>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    // this isthe duration of the progress
    duration: const Duration(milliseconds: 300),
  );

  void restart() async {
    if (animationController.isCompleted) {
      animationController.reset();
    } else {
      animationController.forward();
    }

    // if (animationController.status == AnimationStatus.forward ||
    //     // reverse if forward is completed and if we click
    //     animationController.value >= 1) {
    //   // on start button
    //   animationController.reverse();
    // } else {
    //   // forward animation while starting
    //   animationController.forward();
    // }
  }

  @override
  void initState() {
    animationController.addListener(() {
      setState(() {});
    });

    Timer mytimer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      //code to run on every 5 seconds
      restart();
    });
    super.initState();
  }

  bool _hoverbutom = false;

  bool _visualizarSenha = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xff6558B7),
        // ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff675ebc),
                Color(0xff35314f),
              ],
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 40, right: 40),
                padding: EdgeInsets.all(35),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff231f38),
                ),
                child: Column(
                  children: [
                    Text(
                      "Administrativo",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                    ),
                    //primeiro campo de texto
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
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
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6659B8),
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6659B8),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
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
                        suffixIcon: GestureDetector(
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Icon(
                              _visualizarSenha == false
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            setState(
                              () {
                                _visualizarSenha = !_visualizarSenha;
                              },
                            );
                          },
                        ),
                        labelText: "Senha",
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6659B8),
                        ),
                        floatingLabelStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff6659B8),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      obscureText: _visualizarSenha == false ? true : false,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                    ),
                    Row(
                      children: [
                        MouseRegion(
                          onEnter: (event) {
                            _hoverbutom = true;
                            setState(() {});
                          },
                          onExit: (event) {
                            _hoverbutom = false;
                            setState(() {});
                          },
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  "ACESSAR",
                                  style: TextStyle(
                                    color: _hoverbutom
                                        ? Colors.white
                                        : Color(0xff6659B8),
                                  ),
                                ),
                              ),
                              width: 130,
                              height: 40,
                              decoration: BoxDecoration(
                                boxShadow: _hoverbutom
                                    ? [
                                        BoxShadow(
                                          color: Color(0xff675ebc),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          // changes position of shadow
                                        ),
                                      ]
                                    : [],
                                color: _hoverbutom
                                    ? Color(0xff675ebc)
                                    : Color(0xff231f38),
                                border: ProgressBorder.all(
                                  color: Color(0xff6659b8),
                                  width: 2,
                                  progress: animationController.value,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
