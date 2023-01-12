import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/configmensagem.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/conversa/widgets/baloon_me.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/menssagens.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';

class coversaMensagem extends StatefulWidget {
  const coversaMensagem({super.key});

  @override
  State<coversaMensagem> createState() => _coversaMensagemState();
}

class _coversaMensagemState extends State<coversaMensagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 180),
        child: Container(
          color: Color(0xffc9d6f9),
          padding: EdgeInsets.only(top: 40, right: 35, left: 35, bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeMensages(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 40,
                  color: Color(0xff6c737a),
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            color: Colors.black,
                            spreadRadius: 1),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("images/kaua.jpeg"),
                    ),
                    margin: EdgeInsets.only(right: 20),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Kauã Araujo',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Online'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfigMsg(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.more_vert_outlined,
                  size: 40,
                  color: Color(0xff6c737a),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 45, left: 45),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BaloonMe(
                    hora: "11:49",
                    texto: "Oi Kaua",
                    me: true,
                  ),
                  BaloonMe(
                    texto: "oi Arthur",
                    hora: "12:01",
                    me: false,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xffe2ecff),
                    Color(0xffd9e2ff),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffc9d6f9),
      bottomNavigationBar: Container(
        child: Container(
          padding: EdgeInsets.only(top: 3, bottom: 3, right: 25, left: 25),
          child: Row(
            children: [
              Icon(Icons.drive_folder_upload_outlined),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Mensagem",
                    contentPadding: EdgeInsets.only(right: 15, left: 15),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Transform.rotate(
                angle: -0.78,
                child: Icon(
                  Icons.send_outlined,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.only(right: 45, left: 45, bottom: 45, top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        height: 115,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffe2ecff),
              Color(0xffd9e2ff),
            ],
          ),
        ),
      ),
    );
  }
}
