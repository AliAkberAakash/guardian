import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bubbles.png'), fit: BoxFit.cover),
        ),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            Text(
              'welcome back to',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Guardian',
              style: GoogleFonts.montserratAlternates(
                  color: Colors.deepPurple,
                  fontSize: 75,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
              ],
            ),
            CustomTextField(
              hint: 'username or phone number',
              secured: false,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'password',
              secured: true,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent[400],
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: ButtonTheme(
                minWidth: MediaQuery.of(context).size.width,
                height: 55,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    'Log In',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                '-or-',
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                      onTap: (){ _googleSignIn.signIn();},
                      child: Image (image: AssetImage('assets/google_logo.png'))),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hint;
  bool secured;

  CustomTextField({this.hint, this.secured});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
          obscureText: secured,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[100])),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[100])),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: Colors.deepPurpleAccent[100])),
              hintText: hint,
              hintStyle: TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
                color: Colors.black,
              ))),
    );
  }
}

