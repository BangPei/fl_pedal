import 'package:fl_pedal/main_layout.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class HomeScreen extends MainLayout {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends MainLayoutState<HomeScreen> {
  @override
  Widget body() {
    return Text(
      "Headline",
      style: Theme.of(context).textTheme.displayLarge,
      overflow: TextOverflow.visible,
      softWrap: false,
    );
  }
}
