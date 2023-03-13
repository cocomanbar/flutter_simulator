import 'package:flutter/material.dart';
import 'package:flutter_simulator/route/fsroute.dart';

class DicoverDetailPage extends StatefulWidget {
  String string;
  DicoverDetailPage({Key? key, required this.string}) : super(key: key);

  @override
  DicoverDetailPageState createState() => DicoverDetailPageState();
}

class DicoverDetailPageState extends State<DicoverDetailPage> {
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
        title: Text('收到 ${widget.string}'),
      ),
      body: Center(
        child: FloatingActionButton(
            child: const Icon(Icons.backpack),
            onPressed: () {
              //FSRoute.pop(context, "哈哈哈");
              Navigator.pop(context, 'yyy');
            }),
      ),
    );
  }
}
