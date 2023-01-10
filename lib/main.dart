import 'package:flutter/material.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/mercadolivre.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';
import 'package:asuka/asuka.dart' as asuka;

void main() {
  runApp(const MaterialApp(
    builder: asuka.builder,
    debugShowCheckedModeBanner: false,
    // home: MercadoLivre(),
    home: PrimeiraWidget(),
  ));
}
