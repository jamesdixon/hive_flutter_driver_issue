import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  final dir = await getApplicationDocumentsDirectory();

  // Initialize Hive
  Hive.init(dir.path);

  // Comment out the below line and the test will run.
  final box = await Hive.openBox('general');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter!'),
        ),
        body: Center(
            child: RaisedButton(
          onPressed: () {
            print('awesome');
          },
          child: Text('Tap Me'),
        )),
      ),
    );
  }
}
