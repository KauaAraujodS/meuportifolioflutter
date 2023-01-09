import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class telaDeLogin extends StatefulWidget {
  const telaDeLogin({super.key});

  @override
  State<telaDeLogin> createState() => _telaDeLoginState();
}

class _telaDeLoginState extends State<telaDeLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Color(0xff7500CB),
      ),
    );
  }
}
