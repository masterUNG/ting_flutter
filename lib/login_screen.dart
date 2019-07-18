import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // Method
  Widget passwordTextField() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "PASSWORD",
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget emailTextField() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "EMAIL",
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget mySizeBox() {
    return SizedBox(
      height: 8,
    );
  }

  Widget showTextLogin() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Login',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'OpenSansRegular',
          ),
        ),
      ),
    );
  }

  Widget loginButton() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        padding: EdgeInsets.only(right: 20),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 0.1,
          onPressed: () {},
          child: Icon(
            Icons.navigate_next,
            size: 32,
            color: Color.fromRGBO(25, 164, 153, 1),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 164, 153, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 38,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromRGBO(25, 164, 153, 1),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          showTextLogin(),
          mySizeBox(),
          emailTextField(),
          passwordTextField(),
          mySizeBox(),
          loginButton(),
        ],
      ),
    );
  }
}
