import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:minhaprimieiraaplicacao/Intagram.dart';
import 'package:minhaprimieiraaplicacao/appdecoleta.dart';
import 'package:minhaprimieiraaplicacao/consultacep/consultacep.dart';
import 'package:minhaprimieiraaplicacao/mapa.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/conversa/coversa.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/menssagens.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/mercadolivre.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/novaTeladia_13_01_23.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/primeiroevento.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:minhaprimieiraaplicacao/minhasclasses/telaweb.dart';

void main() {
  runApp(const MaterialApp(
    builder: asuka.builder,
    debugShowCheckedModeBanner: false,
    // home: MercadoLivre(),
    home: insta(),
  ));
}
