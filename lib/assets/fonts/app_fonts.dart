
import 'package:flutter/material.dart';
// class AppFonts{
//   static const String title ="Title";
//   static const String h1Bold ="h1-Bold";
//   static const String h1SemiBold ="h1-SemiBold";
//   static const String generalHeadings ="General-Headings";
//
//   static const String paragraph ="Paragraph";
//   static const String boldParagraph ="Bold-Paragraph";
//   static const String semiBoldParagraph ="SemiBold-Paragraph";
// }


class AppFonts{

  TextStyle defaultStyle(double size, Color color, FontWeight fw) {
    return TextStyle(
      // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }

  TextStyle defaultStyleWithHt(double size, Color color, FontWeight fw, double ht) {
    return TextStyle(
      // Replace 'MyCustomFont' with the actual font name
        fontSize: size,
        color: color,
        fontWeight: fw,
        height: ht);
  }



  TextStyle Headings(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily:
      'Headings', // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }


  TextStyle Paragraph(double size, Color color, FontWeight fw) {
    return TextStyle(
      fontFamily:
      'Paragraph', // Replace 'MyCustomFont' with the actual font name
      fontSize: size,
      color: color,
      fontWeight: fw,
    );
  }





    }




