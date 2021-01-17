import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guardian/utils/my_colors.dart';

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
                  height: 40,
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
                      color: primary,
                      fontSize: 65,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'it is nice to meet you',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 30,
                  ),
                ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'tell me about yourself',
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
                  hint: 'Your Name*',
                  secured: false,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hint: 'Birthday*',
                  secured: false,
                ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      hint: 'Preferred Pronoun*',
                      secured: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      hint: 'Current Location*',
                      secured: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      hint: 'Phone Number*',
                      secured: false,
                    ),
              ]))),
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
