import 'package:fl_pedal/main_layout/left_menu.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromRGBO(245, 245, 245, 0),
        child: Row(
          children: [
            const LeftMenu(),
            Expanded(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
      ),
    );
  }

  Widget body();
}
