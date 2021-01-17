import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guardian/utils/my_colors.dart';

class SOSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: MaterialButton(
                shape: CircleBorder(),
                child: Text(
                  "Safe Place",
                  textAlign: TextAlign.center,
                  style:GoogleFonts.montserrat(
                      color: primary,
                  )
                ),
                color: light_purple1,
                onPressed: (){},
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 150,
              height: 150,
              child: MaterialButton(
                shape: CircleBorder(),
                child: Text(
                  "SOS",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: accent,
                  ),
                ),
                color: primary,
                onPressed: (){},
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 120,
              height: 120,
              child: MaterialButton(
                shape: CircleBorder(),
                child: Text(
                  "Alert",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
                color: accent,
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
