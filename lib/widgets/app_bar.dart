import 'package:flutter/material.dart';
import '../utils/app_colors.dart';


final appBar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  centerTitle: true,
  title: const Text(
    'Welcome',
    style: TextStyle(color: Colours.themeColor),
  ),
  iconTheme: const IconThemeData(color: Colours.drawerColor),
);
