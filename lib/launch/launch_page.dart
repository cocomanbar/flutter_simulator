import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simulator/route/fsroute.dart';
import 'package:flutter_simulator/route/main_module_path.dart';
import 'package:flutter_simulator/Utils/shared_preference.dart';
import 'package:flutter_simulator/system_info/system_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  LaunchPageState createState() => LaunchPageState();
}

// 对于启动图的设置说明
// 纯flutter 项目的启动，启动客户端，直接flutter接管 客户端的窗口delgate，以iOS为列
// iOS原生项目配置启动图，避免启动黑屏，`flutter delegate` 接管 `UIApplication delegate` 进入 `flutter 界面显示时`
// `main` -> `Launch` （设置一个和客户端一样的启动图承接使进入`flutter 项目`动画流畅）
// `Launch`就可以做逻辑（`GuidePage` 、 `SplashPage` 和 `TabPage` 切换逻辑）
class LaunchPageState extends State<LaunchPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () async {
      // 当前系统版本
      String systemVersion =
          FSDeviceInfo.getSystemInfoKey(FSDeviceInfoKey.systemVersion) ?? "";
      // 对比是否升级了
      final prefs = await SharedPreferences.getInstance();
      final String currentVersion =
          prefs.getString(SharedPreferenceKeys.current_version) ?? "";
      // 第一次安装APP，或升级后首次打开APP，进入引导页
      // if (systemVersion != currentVersion) {
      //   // 更新版本
      //   await prefs.setString(
      //       SharedPreferenceKeys.current_version, systemVersion);
      //   // 退出此承载页，跳去引导页
      //   setState(() {
      //     FSRoute.pop(context);
      //     FSRoute.navigateTo(context, MainModuleRoute.guide_page.routePath,
      //         transitionDuration: const Duration(milliseconds: 0),
      //         transition: TransitionType.fadeIn);
      //   });
      //   return;
      // }
      // 版本一样进入广告页
      setState(() {
        FSRoute.pop(context);
        FSRoute.navigateTo(context, MainModuleRoute.splash_page.routePath,
            transitionDuration: const Duration(milliseconds: 0),
            transition: TransitionType.fadeIn);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
            image: AssetImage("assets/images/launch_bg.png"), fit: BoxFit.fill),
      ),
    );
  }
}
