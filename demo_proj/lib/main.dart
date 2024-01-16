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
      body: /*Center(
        child: Image.asset('assets/image3.jpg',),

        child: Icon(Icons.ac_unit,color: Colors.blue,size: 40,),

        child: OutlinedButton(
          onPressed: (){
            print('You clicked me');
          },
          child: Text('Click me'),
        ),

        child: ElevatedButton.icon(onPressed: (){},
            icon: Icon(Icons.mail),
            label: Text('mail me'),),

        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        ),

      ),*/

      // Container(
      //   padding: EdgeInsets.all(30),
      //   color: Colors.grey,
      //   child: Text('Hello'),
      // ),

      Padding(
        padding: EdgeInsets.all(90),
        child: Text('Hello'),
      ),
          floatingActionButton: FloatingActionButton(onPressed: () {},
            child: Text('Click me'),
            backgroundColor: Colors.lightBlue,),
    );
  }
}
