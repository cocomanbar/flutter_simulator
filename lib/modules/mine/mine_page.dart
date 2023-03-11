import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  MinePageState createState() => MinePageState();
}

class MinePageState extends State<MinePage> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '我的',
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 51, 51, 51)),
        ),
        shadowColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
