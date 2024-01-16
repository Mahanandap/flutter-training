import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('The title of app'),
          centerTitle: true,
          actions: [Icon(Icons.mic),],
        ),
        body: Text("Hello"),
        drawer: Drawer(
          child: Text("This is the drawer"),
      ),
      ),
    );
  }
}
