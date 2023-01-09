import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:minhaprimieiraaplicacao/minhasclasses/terceiratelamuscartoes.dart';

class SegundaTela extends StatefulWidget {
  const SegundaTela({super.key});

  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  //varialvedecontrole
  bool saldoVisiviel = false;

  //funcao para esconde ou revelar saldo
  trocarVisibilidadeDoSaldo() {
    if (saldoVisiviel == true) {
      saldoVisiviel = false;
    } else {
      saldoVisiviel = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff7500cb),
      ),
    );
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            double.infinity,
            140,
          ),
          child: Container(
            color: Color(0xff7500CB),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: MaterialButton(
                        onPressed: () {},
                        shape: CircleBorder(),
                        child: Center(
                          child: Icon(
                            Icons.person_outline_outlined,
                            size: 23,
                            color: Color(0xffe3dbe4),
                          ),
                        ),
                        color: Color(0xff842EC6),
                        height: 50,
                      ),
                      margin: EdgeInsets.only(left: 8, bottom: 2.5),
                    ),
                    Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  trocarVisibilidadeDoSaldo();
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.visibility,
                                  color: Color(0xffe3dbe4),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.help_outline_rounded,
                                  color: Color(0xffe3dbe4),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.outgoing_mail,
                                  color: Color(0xffe3dbe4),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Olá, Luiz",
                        style: TextStyle(
                          color: Color(0xffe3dbe4),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // child: AppBar(
          //   leading: Container(
          //     child: MaterialButton(
          //       onPressed: () {},
          //       shape: CircleBorder(),
          //       child: Center(
          //         child: Icon(
          //           Icons.person_outline_outlined,
          //           size: 23,
          //         ),
          //       ),
          //       color: Color(0xff842EC6),
          //     ),
          //     margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
          //   ),
          //   backgroundColor: Color(0xff7500CB),
          //   actions: [
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.visibility),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.help_outline_rounded),
          //     ),
          //     IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.outgoing_mail),
          //     ),
          //   ],
          // ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Conta",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff6c737a),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          saldoVisiviel ? "R\u0024 20,00" : "--",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35, left: 20),
                  width: double.infinity,
                  height: 100,
                  child: ListView(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.account_balance,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Pix",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.qr_code_scanner_outlined,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Pagar",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.payments,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Transferir",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.payments_outlined,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Depositar",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.wallet_rounded,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Carteira",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.account_balance,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Pix",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 100,
                        // color: Colors.green,
                        child: Column(
                          children: [
                            Container(
                              child: MaterialButton(
                                onPressed: () {},
                                shape: CircleBorder(),
                                child: Center(
                                  child: Icon(
                                    Icons.account_balance,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                color: Color(0xffedeef3),
                                height: 73,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Text(
                              "Pix",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MeusCaratoes(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffedeef3),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Icon(Icons.copy_rounded),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Text(
                          "Meus Cartões",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 5),
                  child: Divider(
                    color: Color(0xfff3f4f6),
                    thickness: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.copy_all),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Cartão de Crédito",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff6c737a),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Fatura atual",
                        style: TextStyle(
                            color: Color(0xff938b97),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          "R\u0024 50.478,03",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Limite disponível: R\u0024 70.000,00",
                        style: TextStyle(
                            color: Color(0xff938b97),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 5),
                  child: Divider(
                    color: Color(0xfff3f4f6),
                    thickness: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.currency_exchange_rounded),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Emprestimo",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff6c737a),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Até R\u0024 10.000 disponível para você",
                        style: TextStyle(
                            color: Color(0xff938b97),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 5),
                  child: Divider(
                    color: Color(0xfff3f4f6),
                    thickness: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.trending_up_rounded),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Investimetnto",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff6c737a),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Conheça nossos fundos de investimentos",
                        style: TextStyle(
                            color: Color(0xff938b97),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 5),
                  child: Divider(
                    color: Color(0xfff3f4f6),
                    thickness: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border_outlined),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Seguro de vida",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Color(0xff6c737a),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Um seguro completo e que cabe no bolso",
                        style: TextStyle(
                            color: Color(0xff938b97),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 5),
                  child: Divider(
                    color: Color(0xfff3f4f6),
                    thickness: 4,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 25),
                  child: Row(
                    children: [
                      Text(
                        "Descubra mais",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.all(25),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffedeef3),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Convidar amigos",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                      ),
                      Text(
                          "Tire seus amigos da fila do banco e livre eles de burocracia."),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Row(
                        children: [
                          MaterialButton(
                            child: Text(
                              "Convidar",
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Color(0xff842EC6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, right: 15),
                ),

                // IconButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   icon: Icon(Icons.exit_to_app),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
