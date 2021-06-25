import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

CircularMenu customCircularMenu() {
  return CircularMenu(
    items: [
      CircularMenuItem(icon: Icons.home, color: Colors.green, onTap: () {}),
      CircularMenuItem(icon: Icons.search, color: Colors.blue, onTap: () {}),
      CircularMenuItem(
          icon: Icons.settings, color: Colors.orange, onTap: () {}),
    ],
  );
}
