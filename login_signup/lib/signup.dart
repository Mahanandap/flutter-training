import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';
void main()
{
  runApp(MaterialApp(
    home: Scaffold(
      body: Signup(),
    ),
  ));
}
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _MyAppState();
}

class _MyAppState extends State<Signup> {

  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
            elevation: 7,
            child:SizedBox(
              width: 320,
              height: 550,
              child: Center(
                  child:Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: 'Username',
                            prefixIcon: Icon(Icons.person)
                          ),
                        ),

                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email)
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.password)
                          ),
                          obscureText: true,
                        ),

                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            hintText: 'Confirm Password',
                              prefixIcon: Icon(Icons.password)
                          ),
                          obscureText: true,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal,
                            ),
                            onPressed: (){},
                            child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20),)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Already have an account?'),

                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
                                },
                                child: Text('Login',style: TextStyle(color: Colors.teal),))

                          ],
                        ),
                      ],
                    ),
                  )
              ),
            )
        ),
      ),
    );
  }
}
