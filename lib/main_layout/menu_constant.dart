import 'package:collapsible_sidebar/collapsible_sidebar/collapsible_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<CollapsibleItem> menuItem = [
  CollapsibleItem(
    text: 'Dashboard',
    icon: FontAwesomeIcons.gauge,
    onPressed: () {},
    isSelected: true,
  ),
  CollapsibleItem(
      text: 'Sparepart',
      icon: FontAwesomeIcons.toolbox,
      onPressed: () {},
      subItems: [
        CollapsibleItem(
          text: "Manage Sparepart",
          onPressed: () {},
        ),
      ]),
  CollapsibleItem(
    text: 'Warehouse',
    icon: FontAwesomeIcons.buildingColumns,
    onPressed: () {},
  ),
  CollapsibleItem(
    text: 'Stock',
    icon: FontAwesomeIcons.scaleUnbalancedFlip,
    onPressed: () {},
  ),
  CollapsibleItem(
    text: 'Orders',
    icon: FontAwesomeIcons.firstOrderAlt,
    onPressed: () {},
  ),
  CollapsibleItem(
    text: 'User',
    icon: FontAwesomeIcons.users,
    onPressed: () {},
  ),
  CollapsibleItem(
    text: 'Setting',
    icon: FontAwesomeIcons.gears,
    onPressed: () {},
  )
];
