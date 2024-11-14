import 'package:flutter/material.dart';

// Method for creating a Nav Item
Widget buildNavItem(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.white),
      Text(label, style: const TextStyle(color: Colors.white))
    ],
  );
}


