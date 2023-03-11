import 'dart:async';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simulator/aroutes/fsroute.dart';
import 'package:flutter_simulator/aroutes/main_module_path.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  int _count = 5;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_count == 1) {
          timer.cancel();
          // 跳去Tab
          FSRoute.pop(context);
          FSRoute.navigateTo(context, MainModuleRoute.tab_page.routePath,
              transitionDuration: Duration.zero,
              transition: TransitionType.fadeIn);
        }
        _count--;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _count.toString(),
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
