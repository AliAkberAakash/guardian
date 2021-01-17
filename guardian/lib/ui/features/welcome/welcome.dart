import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
        body: Container(
        height: 900,
        width: 400,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/background.png'),
    fit: BoxFit.cover
             ),
           ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 60,), Text('welcome back to',style: TextStyle(
                  color: Colors.deepPurpleAccent, fontSize: 35,),),
              SizedBox(height: 10,),
              Text('Guardian',style:GoogleFonts.montserratAlternates(color: Colors.deepPurple, fontSize: 80, fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
               Row(children: <Widget>[
                 SizedBox(width: 40,),
                 Text('username or # number',style: TextStyle(color: Colors.black,fontSize: 18),
                 ),
                 SizedBox(height: 65,),
                 CustomTextField(),                                       CustomTextField(),
                ],
               )
             ],
            ),
          ),
         ),
        );
      }
    }


    class CustomTextField extends StatelessWidget{
  string hint;
  bool secured;
  CustomTextField({this.hint,this.secured});
    @override
    Widget build(BuildContext context) {
      return Padding(padding: EdgeInsets.only(left:25,right:25),
      child: TextField(
obscureText: secured,
decoration: InputDecoration(disabledBorder: OutlineInputBorder()),
      )
  }
