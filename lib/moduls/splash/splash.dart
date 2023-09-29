import 'dart:async';

import 'package:first_islami/home_screen/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider.dart';

class splash extends StatelessWidget {
  static String routename = "splash";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);

    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, home.routename);
    });
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()
            ? "assets/image/dark_back.png"
            : "assets/image/splash.png",
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
