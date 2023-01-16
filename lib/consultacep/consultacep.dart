import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

import 'package:minhaprimieiraaplicacao/consultacep/model/resultadoconsulta.dart';

class ConsultaCep extends StatefulWidget {
  const ConsultaCep({super.key});

  @override
  State<ConsultaCep> createState() => _ConsultaCepState();
}

class _ConsultaCepState extends State<ConsultaCep> {
  Cep? resultadoDaConsulta;

  Future consultarCep(String cep) async {
    //bloco para tratamento de exececoes
    try {
      //consulta com a biblioteca http a uma URL
      var resultado = await http.get(
        Uri.parse("https://viacep.com.br/ws/$cep/json/"),
      );

      Cep minhaConsulta = Cep.fromJson(
        json.jsonDecode(resultado.body),
      );
      resultadoDaConsulta = minhaConsulta;
      setState(() {});
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => consultarCep(""),
      ),
      body: Column(
        children: [
          TextFormField(
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              if (value.length == 8) {
                consultarCep(value);
              }
            },
            maxLength: 8,
            decoration: InputDecoration(hintText: "Digite seu CEP aqui:"),
          ),
          resultadoDaConsulta != null
              ? Column(
                  children: [
                    Text("Cep: ${resultadoDaConsulta!.cep}"),
                    Text("Logradouro:${resultadoDaConsulta!.logradouro}"),
                    Text("Bairro: ${resultadoDaConsulta!.bairro}"),
                  ],
                )
              : Text("Sem resultados no momento"),
        ],
      ),
    );
  }
}
