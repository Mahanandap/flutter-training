import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';
void main()
{
  runApp(MaterialApp(
    home: Scaffold(
       body: Login(),
    ),
  ));
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyAppState();
}

class _MyAppState extends State<Login> {

  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
     body: Center(
      child: Card(
        elevation: 7,
        child:SizedBox(
          width: 320,
          height: 500,
          child: Center(
            child:Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Login', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Username',
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

                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      onPressed: (){},
                      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  TextButton(
                      onPressed: (){},
                      child: Text('Forget Password?',style: TextStyle(color: Colors.teal),),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
                          },
                          child: Text('Sign Up',style: TextStyle(color: Colors.teal),),)

                    ],
                  ),
                ],
              ),
            )
          ),
        )
      ),
    ),
    ),
    );
  }
}
