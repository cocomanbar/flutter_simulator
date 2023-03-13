import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_simulator/modules/discover/discover_json.dart';
import 'package:empty_widget/empty_widget.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  DiscoverPageState createState() => DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
  late List<DiscoverItem> itemList = [];

  // 如果使用 FutureBuilder 的形式，那么 Future 不能直接在赋值的地方构建，不然会一直走
  // 主要是因为有状态的组件更新时，会一直触发biuld。
  // 所以需要加个变量的形式，避免future 一直创建。
  late Future _getItemListFuture;

  @override
  void initState() {
    super.initState();

    _getItemListFuture = loadJSON();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '发现',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 51, 51, 51)),
        ),
        shadowColor: Colors.white,
      ),
      body: FutureBuilder(
        future: _getItemListFuture,
        // initialData: null,  // 缓存时可以用
        builder: (context, snapshot) {
          if (itemList.isEmpty == false) {
            return ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: itemList.length,
              itemBuilder: (BuildContext context, index) {
                return createRow(itemList[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(height: 0.5, color: Colors.black12);
              },
            );
          } else {
            return EmptyWidget(
              hideBackgroundAnimation: true,
              title: 'No list found.',
              titleTextStyle:
                  const TextStyle(fontSize: 15, color: Colors.orange),
              subTitle: 'Please check network status.',
              subtitleTextStyle:
                  const TextStyle(fontSize: 13, color: Colors.orange),
            );
          }
        },
      ),
    );
  }

  // 请求数据
  Future<void> loadJSON() async {
    String jsonString =
        await rootBundle.loadString('assets/jsons/discover_list.json');
    final json = jsonDecode(jsonString);
    DiscoverList home = DiscoverList.fromJson(json);
    if (home.data?.list != null) {
      setState(() {
        itemList.addAll(home.data!.list!);
      });
    }
    return Future.value(null);
  }

  // item title
  Widget? createRow(DiscoverItem? item) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: ListTile(
          title: Text(
            item?.title ?? "",
            style: const TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 51, 51, 51)),
          ),
          subtitle: Text(item?.desc ?? "",
              style: const TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 137, 137, 137)))),
    );
  }
}
