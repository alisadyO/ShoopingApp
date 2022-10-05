import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






class LargeText extends StatelessWidget {



  Color  color;
  String  text;
  double size;


LargeText({required this.text,this.size=25,this.color=const Color(0xFF000000)});



  @override
  Widget build(BuildContext context) {
    return Text(text,

    style: GoogleFonts.raleway(

      fontSize: size,
      color: color,
fontWeight: FontWeight.bold,
    ),


    );
  }
}
class SmallText extends StatelessWidget {

  Color  color;
  String text;
  double size;


  SmallText({required this.text,this.size=18,this.color=const Color(0xFFa7a7a7)});



  @override
  Widget build(BuildContext context) {
    return Text(text,

      style: GoogleFonts.raleway(

        fontSize: size,
        color: color,
fontWeight: FontWeight.bold
      ),


    );
  }
}
