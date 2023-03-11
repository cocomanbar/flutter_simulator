import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_simulator/modules/discover/discover_page.dart';
import 'package:flutter_simulator/modules/message/message_page.dart';
import 'package:flutter_simulator/modules/mine/mine_page.dart';
import 'package:flutter_simulator/tabBar/tab_item.dart';
import 'package:flutter_simulator/modules/home/home_page.dart';
import 'package:flutter_simulator/modules/video/video_page.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  TabPageState createState() => TabPageState();
}

class TabPageState extends State<TabPage>
    with AutomaticKeepAliveClientMixin<TabPage> {
  @override
  bool get wantKeepAlive => true;

  int _selectIndex = 0;
  late DateTime lastPopTime;
  late List<BottomNavigationBarItem> bottomBarItems;
  final List<Widget> _childenControlles = [
    const HomePage(),
    const VideoPage(),
    const MessagePage(),
    const DiscoverPage(),
    const MinePage(),
  ];

  Widget getImage(TabBarType type) {
    if (type.index == _selectIndex) {
      return type.getSelectImage();
    }
    return type.getUnSelectImage();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    bottomBarItems = [];
    for (var item in TabBarType.values) {
      // bar item
      BottomNavigationBarItem barItem = BottomNavigationBarItem(
          icon: getImage(item), label: item.getSelectTitle());
      bottomBarItems.add(barItem);
    }

    return WillPopScope(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(1, 244, 245, 245),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomBarItems,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectIndex,
            iconSize: 25.0,
            selectedFontSize: 13.0,
            unselectedFontSize: 13.0,
            selectedItemColor: const Color.fromARGB(255, 51, 51, 51),
            unselectedItemColor: const Color.fromARGB(255, 100, 100, 100),
            onTap: (index) {
              // TextStyle(fontSize: 18, color: ),
              setState(() {
                _selectIndex = index;
              });
            },
          ),
          body: IndexedStack(
            index: _selectIndex,
            children: _childenControlles,
          ),
        ),
        onWillPop: () {
          if (DateTime.now().difference(lastPopTime) >
              const Duration(seconds: 2)) {
            lastPopTime = DateTime.now();
            // toast
            return Future.value(false);
          } else {
            lastPopTime = DateTime.now();
            // 退出app
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            return Future.value(true);
          }
        });
  }
}
