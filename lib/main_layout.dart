import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:flutter_bootstrap_widgets/bootstrap_widgets.dart';

abstract class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  // @override
  // State<MainLayout> createState() => MainLayoutState();
}

abstract class MainLayoutState<T> extends State<MainLayout> {
  static List<CollapsibleItem> _items = [];
  static const AssetImage _avatarImg = AssetImage('images/man.png');
  @override
  void initState() {
    _items = _generateItems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Row(
        children: [
          CollapsibleSidebar(
            duration: const Duration(milliseconds: 1500),
            itemPadding: 8,
            topPadding: 40,
            toggleTitle: "Pedal",
            iconSize: 30,
            isCollapsed: size.width <= 600,
            items: _items,
            collapseOnBodyTap: false,
            avatarImg: _avatarImg,
            title: 'John Smith',
            body: Container(),
            // backgroundColor: Colors.black,
            selectedTextColor: Colors.limeAccent,
            textStyle: const TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.none,
            ),
            titleStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            toggleTitleStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
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
            child: Container(
              height: double.infinity,
              color: const Color.fromARGB(255, 240, 239, 239),
              child: BootstrapContainer(
                fluid: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white70,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.black87.withOpacity(0.1),
                          ),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: BootstrapHeading.h1(
                                type: BootstrapHeadingType.small,
                                child: SelectableText('Dashboard'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: BootstrapHeading.h1(
                                type: BootstrapHeadingType.small,
                                child: SelectableText('Dashboard'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  body(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget body();

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.assessment,
        onPressed: () {},
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Search',
        icon: Icons.search,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Notifications',
        icon: Icons.notifications,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Settings',
        icon: Icons.settings,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Alarm',
        icon: Icons.access_alarm,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Eco',
        icon: Icons.eco,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Event',
        icon: Icons.event,
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'No Icon',
        onPressed: () {},
      ),
      CollapsibleItem(
        text: 'Email',
        icon: Icons.email,
        onPressed: () {},
      ),
    ];
  }
}
