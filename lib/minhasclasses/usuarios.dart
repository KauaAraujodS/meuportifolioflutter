import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:asuka/asuka.dart';

class Usuarios extends StatefulWidget {
  const Usuarios({super.key});

  @override
  State<Usuarios> createState() => _UsuariosState();
}

class _UsuariosState extends State<Usuarios> {
  List<String> listaDeUsuarios = ["usuario1", "Usuario 2", "Usuario 3"];
  List<String> listDaLixeira = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Asuka.showDialog(
              builder: (context) {
                String valorAtualDoCampoDeTexto = "";
                return SimpleDialog(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        valorAtualDoCampoDeTexto = value;
                      },
                    ),
                    MaterialButton(
                      child: Text("salvar"),
                      height: 50,
                      onPressed: () {
                        listaDeUsuarios.add(valorAtualDoCampoDeTexto);
                        Navigator.of(context).pop();
                        setState(() {});
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(Icons.add_outlined),
        ),
        appBar: AppBar(
          title: Text("Usuários"),
          actions: [
            IconButton(
              onPressed: () {
                Asuka.showDialog(
                  builder: (context) {
                    return SimpleDialog(
                      children: [
                        Column(
                          children: List.generate(
                            listDaLixeira.length,
                            (index) => Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              margin: EdgeInsets.all(2),
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Usuário: ${listDaLixeira[index]}",
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      listaDeUsuarios.add(listDaLixeira[index]);
                                      listDaLixeira
                                          .remove(listDaLixeira[index]);
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(Icons.delete_forever_sharp),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Usuario Atuais"),
                Column(
                  children: List.generate(
                    listaDeUsuarios.length,
                    (index) => Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      margin: EdgeInsets.all(2),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Usuário: ${listaDeUsuarios[index]}",
                          ),
                          IconButton(
                            onPressed: () {
                              listDaLixeira.add(listaDeUsuarios[index]);
                              listaDeUsuarios.remove(listaDeUsuarios[index]);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete_rounded),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
