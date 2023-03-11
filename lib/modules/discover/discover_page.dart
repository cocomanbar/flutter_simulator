import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_simulator/modules/discover/discover_json.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  DiscoverPageState createState() => DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
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
    loadJSON();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '发现',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 51, 51, 51)),
        ),
        shadowColor: Colors.white,
      ),
      body: Container(),
    );
  }

  // 请求数据
  Future<void> loadJSON() async {
    String jsonString =
        await rootBundle.loadString('assets/jsons/discover_list.json');
    final json = jsonDecode(jsonString);
    DiscoverList home = DiscoverList.fromJson(json);
    print("== $home  == ${home.code ?? 500}");
  }
}
