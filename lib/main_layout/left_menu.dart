import 'package:fl_pedal/widget/left_expaxiontile.dart';
import 'package:fl_pedal/widget/left_listtile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftMenu extends StatefulWidget {
  final double menuSize;
  final bool showMenu;
  final Function(double) onPressed;
  const LeftMenu(
      {super.key,
      required this.menuSize,
      required this.onPressed,
      required this.showMenu});

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.menuSize,
      duration: const Duration(milliseconds: 200),
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
      child: Column(
        children: [
          HeaderMenu(size: widget.menuSize),
          const Divider(height: 20, color: Colors.transparent),
          Expanded(child: MainMenu(size: widget.menuSize)),
          Footer(
            showMenu: widget.showMenu,
            size: widget.menuSize,
            onPressed: widget.onPressed,
          ),
        ],
      ),
    );
  }
}

class HeaderMenu extends StatefulWidget {
  final double size;
  const HeaderMenu({super.key, required this.size});

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                visible: widget.size > 100,
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
          ],
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  final double size;
  const MainMenu({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LeftListTile(
          visibility: size > 60,
          selected: false,
          title: "Dashboard",
          icon: FontAwesomeIcons.gauge,
          onTap: () {},
        ),
        LeftExpantionTile(
          visibility: size > 60,
          title: "Sparepart",
          icon: FontAwesomeIcons.toolbox,
          children: size > 60
              ? [
                  LeftListTile(
                    selected: false,
                    title: "Atur Sparepart",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                  LeftListTile(
                    selected: false,
                    title: "Tambah Sparepart",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                  LeftListTile(
                    selected: false,
                    title: "Stock Sparepart",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                ]
              : [],
        ),
        LeftExpantionTile(
          visibility: size > 60,
          title: "Gudang",
          icon: FontAwesomeIcons.buildingShield,
          expanded: true,
          children: size > 60
              ? [
                  LeftListTile(
                    selected: true,
                    title: "Atur Gudang",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                  LeftListTile(
                    selected: false,
                    title: "Tambah Gudang",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                  LeftListTile(
                    selected: false,
                    title: "Stock Gudang",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                ]
              : [],
        ),
        LeftExpantionTile(
          visibility: size > 60,
          title: "Stok",
          icon: FontAwesomeIcons.store,
          expanded: false,
          children: size > 60
              ? [
                  LeftListTile(
                    selected: false,
                    title: "Stok Masuk",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                  LeftListTile(
                    selected: false,
                    title: "Stok Keluar",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                  LeftListTile(
                    selected: false,
                    title: "Mutasi Stok",
                    // icon: FontAwesomeIcons.toolbox,
                    onTap: () {},
                  ),
                ]
              : [],
        ),
        LeftListTile(
          visibility: size > 60,
          selected: false,
          title: "User",
          icon: FontAwesomeIcons.users,
          onTap: () {},
        ),
        LeftListTile(
          visibility: size > 60,
          selected: false,
          title: "Setting",
          icon: FontAwesomeIcons.gears,
          onTap: () {},
        ),
      ],
    );
  }
}

class Footer extends StatefulWidget {
  final double size;
  final bool showMenu;
  final Function(double) onPressed;
  const Footer(
      {super.key,
      required this.onPressed,
      required this.size,
      required this.showMenu});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  double _size = 250;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(252, 252, 252, 1),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(6),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 235, 233, 233),
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: widget.size > 60,
            child: const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  "Aplication Version. 1.0.0",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 98, 74, 1),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _size = widget.size < 250 ? 250 : 60;
                  widget.onPressed(_size);
                });
              },
              icon: Icon(widget.showMenu
                  ? FontAwesomeIcons.bars
                  : FontAwesomeIcons.xmark),
              color: const Color.fromRGBO(218, 98, 74, 1),
            ),
          ),
        ],
      ),
    );
  }
}
