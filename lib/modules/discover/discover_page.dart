import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '发现',
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
