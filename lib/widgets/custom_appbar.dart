import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title, required this.prefix, required this.sufix});
  final String title;
  final IconData prefix;
  final IconData sufix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 20, 15, 0),
      child: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: preferredSize.height,
        leading: Icon(prefix, size: 35),
        scrolledUnderElevation: 0.0,
        title: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [Icon(sufix, size: 35)],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
