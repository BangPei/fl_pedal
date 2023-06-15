import 'package:fl_pedal/widget/left_listtile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftMenu extends StatefulWidget {
  const LeftMenu({super.key});

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  double size = 250;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: size,
      duration: const Duration(milliseconds: 500),
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(236, 236, 236, 1),
            blurRadius: 20,
            spreadRadius: 0.01,
            offset: Offset(1, 3),
          ),
          BoxShadow(
            color: Color.fromRGBO(236, 236, 236, 1),
            blurRadius: 50,
            spreadRadius: 0.01,
            offset: Offset(1, 3),
          ),
        ],
      ),
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 70,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(252, 252, 252, 1),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(6),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 235, 233, 233),
                    spreadRadius: 1,
                  )
                ],
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Visibility(
                      visible: size > 100,
                      replacement: const CircleAvatar(
                        backgroundImage: AssetImage('images/man.png'),
                      ),
                      child: GestureDetector(
                        child: const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/man.png'),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Pedal Pedal",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color.fromRGBO(218, 98, 74, 1),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        size = size > 60 ? 60 : 250;
                      });
                    },
                    icon: const FaIcon(FontAwesomeIcons.bars),
                    color: const Color.fromRGBO(218, 98, 74, 1),
                  )
                ],
              ),
            ),
          ),
          const Divider(height: 20, color: Colors.transparent),
          LeftListTile(
            selected: false,
            title: "Dashboard",
            icon: FontAwesomeIcons.gauge,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
