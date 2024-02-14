import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
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
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body:Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('My Profile',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 60,),

              Text("Full Name"),
              TextField(
              decoration:InputDecoration(
                  border:OutlineInputBorder(
                  )
                ),
              ),
                SizedBox(height: 20,),
                Text("Email Address"),
                TextField(
                  decoration:InputDecoration(
                      border:OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: 20,),

                Text("job Title"),
                TextField(
                  decoration:InputDecoration(
                      border:OutlineInputBorder(
                      )
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(100, 80, 0, 0),
                    child:ElevatedButton(onPressed: (){},
                    child: Text('Save Changes'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ),
                    )
                ),
        ],
        ),
          ),

      ),
    );
  }
}
