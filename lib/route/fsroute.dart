// ignore_for_file: file_names

import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simulator/route/main_module_path.dart';

typedef FSFluroRouteBlock = void Function(FluroRouter route);

class FSRoute {
  // 路由管理
  static final route = FluroRouter.appRouter;

  // main定义错误路由
  static void configDefaultErrorRoute(FSFluroRouteBlock routeBlock) {
    routeBlock(FSRoute.route);
  }

  // Module Route
  static void setupModuleRoute() {
    FluroRouter route = FSRoute.route;
    // Main Module
    MainRouteInit.routeInit(route);
  }

  /// Pop page
  static pop(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigate to Page
  static Future navigateTo(BuildContext context, String path,
      {Map<String, dynamic>? parameters,
      bool replace = false,
      bool clearStack = false,
      bool maintainState = true,
      bool rootNavigator = false,
      TransitionType transition = TransitionType.cupertino,
      Duration? transitionDuration,
      RouteTransitionsBuilder? transitionBuilder,
      RouteSettings? routeSettings}) async {
    String query = "";
    if (parameters != null) {
      int index = 0;
      for (var key in parameters.keys) {
        var value = parameters[key];
        value = Uri.encodeComponent(value);
        index == 0 ? query = "?" : query = "$query&";
        query += "$key=$value";
        index++;
      }
    }
    if (kDebugMode) {
      print('此次页面传递的参数：$query');
    }
    path = path + query;
    return route.navigateTo(
      context,
      path,
      replace: replace,
      maintainState: maintainState,
      rootNavigator: rootNavigator,
      transition: transition,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
      routeSettings: routeSettings,
    );
  }
}
