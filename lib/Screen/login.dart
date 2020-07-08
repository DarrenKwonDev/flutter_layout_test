import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Sign In",
            style: TextStyle(color: Colors.black),
          )),
      body: Container(
        child: Column(
          children: <Widget>[
            _form(),
            _forgotpassword(),
            _rememberme(),
            _signinButton(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Center(
                child: Text(
                  "or",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            _oauthButton(),
            Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 28, 0, 0),
              child: Row(
                children: <Widget>[
                  Text("need an account?"),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(28.0, 15, 0, 0),
              child: Row(
                children: <Widget>[
                  Text("forgot your passworrd?"),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Rewite",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _oauthButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 150,
            height: 45,
            child: RaisedButton(
              color: Color(0xff485A90),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.0),
                  side: BorderSide(color: Color(0xff485A90))),
              child: Text(
                "FaceBook",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 45,
            child: RaisedButton(
              color: Color(0xff5C86F9),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  side: BorderSide(color: Color(0xff5C86F9))),
              child: Text(
                "Twitter",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _signinButton() {
    return Container(
      width: 350,
      height: 45,
      child: RaisedButton(
        color: Colors.redAccent,
        onPressed: () {},
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
            side: BorderSide(color: Colors.redAccent)),
        child: Text(
          "Sign in",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Padding _rememberme() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        children: <Widget>[
          Checkbox(
            value: checkboxValue,
            activeColor: Colors.transparent,
            checkColor: Colors.red,
            onChanged: (bool value) {
              setState(() {
                checkboxValue = !checkboxValue;
              });
            },
          ),
          Text(
            "Remember me",
            style: TextStyle(color: Colors.black54),
          )
        ],
      ),
    );
  }

  Row _forgotpassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Text(
            "Forgot password?",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );
  }

  Form _form() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    hintText: "Email"),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide.none),
                    hintText: "Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
