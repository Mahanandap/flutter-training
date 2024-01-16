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
        body: ListView.builder(
            itemBuilder:(BuildContext context,int index)
        {
          return ListTile(
              title: Text("list item no "+index.toString()),
          );
        },itemCount: 20,
        ),


        /*
        ListView(
          itemExtent: 130,
          children: [
            ListTile(title: Text("Hello"),),
            ListTile(title: Text("Hello"),),
            ListTile(title: Text("Hello"),),
            ListTile(title: Text("Hello"),),
            ListTile(title: Text("Hello"),),
            ListTile(title: Text("Hello"),),
            ListTile(title: Text("Hello"),),

          ],
        ),
        */



        //Stack
        /*
        Stack(
          fit: StackFit.expand,
          children: [
            FlutterLogo(),
            Container(
              child:Card(
                color: Colors.transparent,
                elevation: 5.0,
                child:Text('Learn flutter',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.teal,fontWeight: FontWeight.bold
              ),),
            ),
            ),
          ],
        ),

         */
      ),
    );
  }
}
