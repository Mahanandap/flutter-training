import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
        home: Home()

    ));

class Home extends StatelessWidget {
  // const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Text('Hello World'),
      //     ElevatedButton(onPressed: (){},
      //         child: Text('Click me'),),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30),
      //       child: Text('Container'),
      //     )
      //   ],
      // ),

      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Container(
      //       padding: EdgeInsets.all(20),
      //       color: Colors.cyan,
      //       child: Text('one'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30),
      //       color: Colors.pinkAccent,
      //       child: Text('Two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40),
      //       color: Colors.amber,
      //       child: Text('Three'),
      //     )
      //   ],
      // ),



      Column(
        children: [
          Expanded(
            flex: 1,
            child:Card(child:Center(child:Text('one'),),),
          ),
          Expanded(
            flex: 1,
            child: Card(child:Center(child:Text('Two'),),),
          ),
          Expanded(
            flex: 1,
            child: Card(child:Center(child:Text('Three'),),),
          )
        ],
      ),
    );
  }
}
