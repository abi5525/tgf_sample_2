import 'package:flutter/material.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/screens/HomePage.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
     
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("TORUS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
              SizedBox(height: 20),
              Text('"Get Started With Your  Secured Login"', style:TextStyle(fontWeight: FontWeight.bold, fontSize: 20),textAlign: TextAlign.center,),
              SizedBox(height: 10,),
              Text("Sign in with Email or Password", style: BodyStyle(),),
              SizedBox(height: 20,),
              
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username or Email',
                  border: OutlineInputBorder(),
                ),
                
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                      },
                      child: Text('Login').textColor(Colors.white),
                      style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff435C83),
                                minimumSize: Size(100, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                    
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
