import 'package:flutter/material.dart';

BottomNavigationBarItem getBottomItems(
    {required String label, required Icon icon}) {
  return BottomNavigationBarItem(
    icon: icon,
    label: label,
  );
}
