import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabBarType {
  home,
  vidoe,
  message,
  discover,
  mine,
}

extension TabBarTypeExtension on TabBarType {
  // 未选中的标题
  String getUnSelectTitle() {
    switch (this) {
      case TabBarType.home:
        return "首页";
      case TabBarType.vidoe:
        return "视频";
      case TabBarType.message:
        return "消息";
      case TabBarType.discover:
        return "发现";
      case TabBarType.mine:
        return "我的";
    }
  }

  // 选中的标题
  String getSelectTitle() {
    switch (this) {
      case TabBarType.home:
        return "首页";
      case TabBarType.vidoe:
        return "刷新";
      case TabBarType.message:
        return "消息";
      case TabBarType.discover:
        return "发现";
      case TabBarType.mine:
        return "我的";
    }
  }

  // 未选中的图片
  Image getUnSelectImage() {
    switch (this) {
      case TabBarType.home:
        return Image.asset('assets/images/tabbar_home.png');
      case TabBarType.vidoe:
        return Image.asset('assets/images/tabbar_video.png');
      case TabBarType.message:
        return Image.asset('assets/images/tabbar_message_center.png');
      case TabBarType.discover:
        return Image.asset('assets/images/tabbar_discover.png');
      case TabBarType.mine:
        return Image.asset('assets/images/tabbar_profile.png');
    }
  }

  // 选中的图片
  Image getSelectImage() {
    switch (this) {
      case TabBarType.home:
        return Image.asset('assets/images/tabbar_home_highlighted.png');
      case TabBarType.vidoe:
        return Image.asset('assets/images/tabbar_video_highlighted.png');
      case TabBarType.message:
        return Image.asset(
            'assets/images/tabbar_message_center_highlighted.png');
      case TabBarType.discover:
        return Image.asset('assets/images/tabbar_discover_highlighted.png');
      case TabBarType.mine:
        return Image.asset('assets/images/tabbar_profile_highlighted.png');
    }
  }
}
