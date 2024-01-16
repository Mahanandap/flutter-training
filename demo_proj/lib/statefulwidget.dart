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
  String str='Hello';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("I was started");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(str,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
            ),
            ElevatedButton(
                onPressed: (){
                  str='Hii';
                  setState(() {});
                },
                child: Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
