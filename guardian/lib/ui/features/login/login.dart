import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
          return Scaffold(
           body: Container(
             height: 900,
             width: 400,
          decoration: BoxDecoration(
          image: DecorationImage(
             image: AssetImage('assets/background.png'),
            fit: BoxFit.cover
             ),
             ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 95,),
              Text('Guardian',style:GoogleFonts.montserratAlternates(color: Colors.deepPurple, fontSize: 80, fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              Text('always by your side',style:GoogleFonts.montserratAlternates(color: Colors.deepPurpleAccent, fontSize: 28),),
            ]
          ),
           ),
          );
  }
}
