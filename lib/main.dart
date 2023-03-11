import 'package:flutter/material.dart';
import 'package:flutter_simulator/aroutes/fsroute.dart';
import 'package:flutter_simulator/launch/launch_page.dart';
import 'package:flutter_simulator/system_info/system_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 初始化设备信息
    FSDeviceInfo.defaultDevice.setupDeviceInfo();
    // 设置路由丢失页
    FSRoute.configDefaultErrorRoute((route) {
      // 设置错误页
    });
    // 设置模块内的路由
    FSRoute.setupModuleRoute();

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      onGenerateRoute: generatorRoute,
      home: const LaunchPage(),
    );
  }

  Route<dynamic>? generatorRoute(RouteSettings settings) {
    return FSRoute.route.generator(settings);
  }
}
