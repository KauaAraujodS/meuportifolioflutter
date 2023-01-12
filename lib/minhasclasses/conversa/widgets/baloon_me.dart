import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BaloonMe extends StatefulWidget {
  //esse aqui é o metodo contrutor.
  const BaloonMe({
    super.key,
    required this.texto,
    required this.hora,
    required this.me,
  });

  final String? texto;
  final String? hora;
  final bool? me;

  @override
  State<BaloonMe> createState() => _BaloonMeState();
}

class _BaloonMeState extends State<BaloonMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment:
            widget.me! ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment:
                widget.me! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(widget.texto!),
                    decoration: widget.me!
                        ? BoxDecoration(
                            color: Color(0xfff5feff),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          )
                        : BoxDecoration(
                            color: Color(0xfff5feff),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            ),
                          ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(widget.hora!),
            ],
          ),
        ],
      ),
    );
  }
}
