import 'package:flutter/material.dart';
import 'package:lfmanager/pages/dashboard.dart';
import 'package:lfmanager/pages/home.dart';
import 'package:lfmanager/pages/login.dart';

import 'Utils/theme.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
    theme: ThemeData(
      fontFamily: primaryFont,
      primaryColor: color3,
    ),
  ));
}

