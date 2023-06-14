import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:fl_pedal/main_layout/menu_constant.dart';
import 'package:fl_pedal/main_layout/top_navbar.dart';
import 'package:fl_pedal/widget/default_title.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
abstract class MainLayout extends StatefulWidget {
  String title;
  String menu;
  bool? showSubtitle;
  MainLayout({
    super.key,
    required this.title,
    required this.menu,
    this.showSubtitle,
  });

  // @override
  // State<MainLayout> createState() => MainLayoutState();
}

abstract class MainLayoutState<T> extends State<MainLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          CollapsibleSidebar(
            duration: const Duration(milliseconds: 1500),
            itemPadding: 8,
            topPadding: 40,
            borderRadius: 6,
            toggleTitle: "Pedal",
            iconSize: 30,
            isCollapsed: size.width <= 600,
            items: menuItem,
            collapseOnBodyTap: false,
            avatarImg: const AssetImage('images/man.png'),
            title: 'John Smith',
            body: Container(),
            // backgroundColor: Colors.black,
            selectedTextColor: Colors.limeAccent,
            textStyle: const TextStyle(
              fontSize: 15,
            ),
            titleStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            toggleTitleStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            sidebarBoxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 233, 231, 231),
                blurRadius: 20,
                spreadRadius: 0.01,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Color.fromARGB(255, 233, 231, 231),
                blurRadius: 50,
                spreadRadius: 0.01,
                offset: Offset(3, 3),
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: const Color.fromRGBO(237, 237, 237, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    height: 5,
                    color: Colors.transparent,
                  ),
                  const TopNavbar(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTitle(
                            widget.title,
                            showSubtitle: widget.showSubtitle,
                          ),
                          body(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget body();
}
