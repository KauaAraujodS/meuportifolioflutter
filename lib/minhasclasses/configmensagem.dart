import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/conversa/coversa.dart';

class ConfigMsg extends StatefulWidget {
  const ConfigMsg({super.key});

  @override
  State<ConfigMsg> createState() => _ConfigMsgState();
}

class _ConfigMsgState extends State<ConfigMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 240),
        child: Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => coversaMensagem(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Color(0xff6c737a),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffc9d6f9),
    );
  }
}
