import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MeusCaratoes extends StatefulWidget {
  const MeusCaratoes({super.key});

  @override
  State<MeusCaratoes> createState() => _MeusCaratoesState();
}

class _MeusCaratoesState extends State<MeusCaratoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text("terceira telaaaa"),
      ),
    );
  }
}
