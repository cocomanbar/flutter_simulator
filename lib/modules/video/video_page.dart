import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return VideoPageState();
  }
}

class VideoPageState extends State<VideoPage> {
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
          '视频',
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
