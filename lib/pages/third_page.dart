import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String name;
  const ThirdPage({Key? key, required this.name}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Hello world');
          },
          child: Text('Hi ${widget.name}. Go back to main page'),
        ),
      ),
    );
  }
}
