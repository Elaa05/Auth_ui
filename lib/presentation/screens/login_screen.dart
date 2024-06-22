import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/Customized.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _loginWithGoogle() {

  }

  void _loginWithFacebook() {

  }

  void _loginWithApple() {
  }
  void _login() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
        body: Padding(
          padding: const EdgeInsets.only(right: 35 , left: 35 , top : 50),
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Text(
    'Login here',
    textAlign: TextAlign.center,
    style: CustomTextStyles.poppinsExtraBold.copyWith(
       fontSize: 30,
       color: Color(0xFF1F41BB),
    ),
    ),
    SizedBox(height: 10),
    Padding(
      padding: const EdgeInsets.only(right: 50 , left: 50),
      child: Text(
      'Welcome back you’ve been missed!',
      textAlign: TextAlign.center,
        style: CustomTextStyles.poppinsSemiBold.copyWith(
        fontSize: 20,
         color: Colors.black ,
      ),
      ),
    ),
    SizedBox(height: 80),
      Container(
        width: 357,
        height: 64,
        child: TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.black , fontWeight: FontWeight.normal),
            filled: true,
            fillColor: Color(0xFFF1F4FF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Color(0xFF1F41BB),
              ),
            ),
          ),
        ),
      ),
    SizedBox(height: 10),
    TextField(
    controller: _passwordController,
    decoration: InputDecoration(
    hintText: 'Password',
    hintStyle: TextStyle(color: Colors.black , fontWeight: FontWeight.normal),
    filled: true,
    fillColor: Color(0xFFF1F4FF),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
    color: Color(0xFF1F41BB),
    ),
    ),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
    color: Colors.white,
    ),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
    color: Color(0xFF1F41BB),
    ),
    ),
    ),
    obscureText: true,
    ),
    SizedBox(height: 18),
    Padding(
      padding: const EdgeInsets.only(left: 190),
      child: Text(
        'Forgot your password?',
        style: TextStyle(
          color: Color(0xFF1F41BB),
          fontSize: 14,
          fontWeight: FontWeight.w600, // Semibold
        ),
      ),
    ) ,
      SizedBox(height: 18),

      ElevatedButton(
    onPressed: _login,
    style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 16.0), backgroundColor: Color(0xFF1F41BB), // Button color
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Text(
    'Sign in',
    style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.w600),
    ),
    ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.only(right: 50 , left: 50),
        child: Text(
          'Create new account ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black ,
          ),
        ),
      ),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.only(right: 50 , left: 50),
        child: Text(
          'Or continue with',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1F41BB),
          ),
        ),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 60,
              height: 44,
            decoration: BoxDecoration(
              color: Color(0xFFECECEC),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.google, color: Colors.black),
              onPressed: _loginWithGoogle,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 60,
            height: 44,
            decoration: BoxDecoration(
              color: Color(0xFFECECEC),
              borderRadius: BorderRadius.circular(8.0),
            ),

            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.black),
              onPressed: _loginWithFacebook,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 60,
            height: 44,
            decoration: BoxDecoration(
              color: Color(0xFFECECEC),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.apple, color: Colors.black),
              onPressed: _loginWithApple,
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
}
