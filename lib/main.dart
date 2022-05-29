import 'package:flutter/material.dart';
import 'package:lfmanager/pages/dashboard.dart';
import 'package:lfmanager/pages/homepage.dart';
import 'package:lfmanager/pages/landing.dart';
import 'package:lfmanager/pages/login.dart';

import 'Utils/theme.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
      fontFamily: primaryFont,
      primaryColor: color3,
    ),
  ));
}

