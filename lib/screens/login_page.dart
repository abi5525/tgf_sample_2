import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tgf_sample/extensions/color.dart';
import 'package:tgf_sample/extensions/style.dart';
import 'package:styled_widget/styled_widget.dart';
import 'package:tgf_sample/screens/HomePage.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [secondaryBlue, primaryBlue], // Set your colors here
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 200,
                  child: ColorFiltered(
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      child: SvgPicture.asset("assets/Logo2.svg")),
                ),
                Text(
                  '"Get Started With Your Secured Login"',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      // labelText: 'Username or Email',
                      // labelStyle: TextStyle(color: subTitleColor),
                      hintText: "Email or Username",
                      hintStyle:TextStyle(color: hintText),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0xffe6e6e6)),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryBlue, width: 1),
                      ),
                      fillColor: Colors.white,
                      filled: true),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      // labelText: 'Password',
                      // labelStyle: TextStyle(color: subTitleColor),
                      hintText: "Password",
                      hintStyle:TextStyle(color: hintText),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      
                     
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide:
                      //       BorderSide(color: Color(0xffe6e6e6), width: 1),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primaryBlue, width: 1),
                      ),
                      fillColor: Colors.white,
                      filled: true),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Checkbox(
                          activeColor: hintText,
                          checkColor: primaryBlue,
                          side: BorderSide(
                            color: hintText, // Border color
                            width: 1, // Border width
                          ),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                    Text('Remember Me',style: TextStyle(color: cardColor),),
                      ],
                    ),
                    
                    GestureDetector(
                      onTap: () {
                        // Navigate to forgot password screen
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: cardColor),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ).textColor(Colors.white),
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
