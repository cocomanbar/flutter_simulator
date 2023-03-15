import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simulator/Utils/fstoast.dart';
import 'package:flutter_simulator/route/fsroute.dart';
import 'package:flutter_simulator/launch/launch_page.dart';
import 'package:flutter_simulator/system_info/system_info.dart';
import 'dart:async';

// 上报错误和日志逻辑
void reportErrorDetails(FlutterErrorDetails details) {
  print("details ===>>> $details");
}

// 构建错误信息
FlutterErrorDetails makeDetails(Object obj, StackTrace stack) {
  return FlutterErrorDetails(exception: obj, stack: stack);
}

void main() {
  // Flutter framework 异常捕获
  FlutterError.onError = (FlutterErrorDetails details) {
    FSToast.showToast("msg3");
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) {
      Zone.current.handleUncaughtError(
          details.exception, details.stack ?? StackTrace.current);
    }
  };

  // 其他类型的捕获
  runZoned(
    () => runApp(const MyApp()),
    // 1.收集print打印日志
    zoneSpecification: ZoneSpecification(
      // 拦截未处理的异步错误
      handleUncaughtError: (self, parent, zone, error, stackTrace) {
        FlutterErrorDetails details = makeDetails(error, stackTrace);
        reportErrorDetails(details);
      },
    ),
  );
}

// dev env
// Flutter 3.7.7 • channel unknown • unknown source
// Framework • revision 2ad6cd72c0 (3 days ago) • 2023-03-08 09:41:59 -0800
// Engine • revision 1837b5be5f
// Tools • Dart 2.19.4 • DevTools 2.20.1
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
