import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './text.dart';

class BUTTON extends StatelessWidget {
  bool TOrN;
  String text;
  double width;
  Function() Push;
String UNICODE;
  BUTTON({this.text = 'hi', required this.width, required this.TOrN,required this.Push,this.UNICODE='\u003E'});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: Push,
        child: Container(
          height: 75,
          width: width,
          decoration: BoxDecoration(
              color: Color(0xFF000000),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (TOrN == true) ...[
                SmallText(
                  text: text,
                ),
                SizedBox(
                  width: 20,
                ),
                SmallText(
                  text: UNICODE,
                  size: 37,
                )
              ] else if (TOrN == false) ...[
                SmallText(
                  text: UNICODE,
                  size: 37,
                )
              ]
            ],
          ),
        ));
  }
}



class TextButton1 extends StatelessWidget {
Color color;
  String Namepart;
  int SubNum;

  double sub ;
  double SText;




  TextButton1({required this.Namepart,required this.SubNum,this.color=const Color(0xFF000000),this.SText=32,this.sub=23});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: null,


        child: Wrap(
spacing: 8,
          children: [

            Text(Namepart,style: GoogleFonts.raleway(

              fontSize: SText,color: color,
fontWeight: FontWeight.bold

            ),)

           , Text('$SubNum',style: GoogleFonts.raleway(


                fontSize: sub,color: color,

                fontFeatures: [FontFeature.subscripts()],
              fontWeight: FontWeight.bold



              ,)


            )],


        )

    );
  }
}




