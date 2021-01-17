import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signPage extends StatelessWidget {
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
                      'Hello, I am your',
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
                        height: 70,
                      ),
                      Text(
                        'it',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 30,
                        ),
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
      secured: false,
    ),
    ]
    )
    )
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
