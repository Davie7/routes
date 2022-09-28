import 'package:flutter/material.dart';
import 'package:routes/routes/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  dynamic result = 'Data to come back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              child: Text('Go to second page'),
            ),
            ElevatedButton(
              onPressed: () async {
                var resultBack = await Navigator.of(context).pushNamed(
                  RouteManager.thirdPage,
                  arguments: {'name': 'Dave'},
                );
                setState(() {
                  result = resultBack;
                });
              },
              child: Text('Go to third page'),
            ),
            Text('$result') 
          ],
        ),
      ),
    );
  }
}
