import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_simulator/launch/splash_page.dart';
import 'package:flutter_simulator/launch/guide_page.dart';
import 'package:flutter_simulator/tabBar/tab_page.dart';

enum MainModuleRoute {
  splash_page,
  guide_page,
  tab_page,
}

// 其他文件通过显示声明 `MainRouteInit`执行
extension MainRouteInit on MainModuleRoute {
  static void routeInit(FluroRouter route) {
    route.define(MainModuleRoute.splash_page.routePath,
        handler: MainModuleRoute.splash_page.routeHandle);
    route.define(MainModuleRoute.guide_page.routePath,
        handler: MainModuleRoute.guide_page.routeHandle);
    route.define(MainModuleRoute.tab_page.routePath,
        handler: MainModuleRoute.tab_page.routeHandle);
  }
}

extension MainModuleRoutePath on MainModuleRoute {
  String get routePath {
    switch (this) {
      case MainModuleRoute.splash_page:
        return "/flutter_simulator/splash_page";
      case MainModuleRoute.guide_page:
        return "/flutter_simulator/guide_page";
      case MainModuleRoute.tab_page:
        return "/flutter_simulator/tab_page";
    }
  }
}

// 对于非需要的可以隐式声明
extension on MainModuleRoute {
  Handler get routeHandle {
    switch (this) {
      case MainModuleRoute.splash_page:
        return Handler(handlerFunc:
            (BuildContext? context, Map<String, List<String>> parameters) {
          // ignore: prefer_const_constructors
          return SplashPage();
        });
      case MainModuleRoute.guide_page:
        return Handler(handlerFunc:
            (BuildContext? context, Map<String, List<String>> parameters) {
          // ignore: prefer_const_constructors
          return GuidePage();
        });
      case MainModuleRoute.tab_page:
        return Handler(handlerFunc:
            (BuildContext? context, Map<String, List<String>> parameters) {
          // ignore: prefer_const_constructors
          return TabPage();
        });
    }
  }
}
