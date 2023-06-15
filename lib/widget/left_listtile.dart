import 'package:flutter/material.dart';

class LeftListTile extends StatelessWidget {
  final String title;
  final bool? visibility;
  final bool? selected;
  final IconData? icon;
  final GestureTapCallback? onTap;

  const LeftListTile({
    Key? key,
    required this.title,
    this.visibility,
    this.icon,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visibility ?? true,
      child: ListTile(
        leading: icon == null
            ? const SizedBox.shrink()
            : Icon(
                icon,
                color: const Color.fromRGBO(238, 182, 172, 1),
                size: 25,
              ),
        selectedColor: const Color.fromRGBO(218, 98, 74, 1),
        selected: selected ?? false,
        hoverColor: Colors.amberAccent,
        title: SelectableText(
          title,
          // style: const TextStyle(
          //   color: Color.fromRGBO(133, 141, 147, 1),
          // ),
        ),
        // tileColor: const Color(0xFF2C3C56).withOpacity(0.8),
        // hoverColor: const Color(0xFF2C3C56).withOpacity(0.8),
        // selectedColor: const Color(0xFF2C3C56).withOpacity(0.8),
        // focusColor: const Color(0xFF2C3C56).withOpacity(0.8),
        onTap: onTap,
      ),
    );
  }
}
