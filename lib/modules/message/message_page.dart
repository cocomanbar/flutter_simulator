import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage> {
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
          '消息',
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
