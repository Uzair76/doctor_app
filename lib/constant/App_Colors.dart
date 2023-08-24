import 'package:flutter/material.dart';

class AppColors {
  /* Start of Colors */


  //Primary Color of app
  static const Color kPrimaryColor= Color(0xff15558D);

  //TExt Color

  static const Color kPrimaryTextGreyColor = Color(0xff858585);
  static const Color kPrimaryTextWhiteColor = Color(0xffffffff);
  static const Color kPrimaryTextBlueColor = Color(0xff2F80ED);
  static const Color kPrimaryTextBlackColor = Color(0xff000000);

  //state colors
  static const Color kStateInfoColor= Color(0xff2F80ED);
  static const Color kStateSuccessColor= Color(0xff27AE60);
  static const Color kStateWarningColor= Color(0xffE2B93B);
  static const Color kStateErrorColor= Color(0xffEB5757);

  //Black Color
  static const Color kBlackColor1= Color(0xffD1D1D);
  static const Color kBlackColor2= Color(0xff333333);
  static const Color kBlack = Color(0xff000000);
  static const Color kBlack0D = Color(0xff0d0d0d);
  //white color
  static const Color kWhite = Color(0xffffffff);
  static const Color kWhiteF7 = Color(0xfff7f7f7);
  static const Color kWhiteFA = Color(0xffFAFAFA);
  static const Color kWhiteEF = Color(0xffEFEFEF);
  //grey color
  static const Color kGrey = Color(0xffD7D7D7);
  static const Color kGreyB7 = Color(0xffB7B7B7);
  static const Color kGrey8E = Color(0xff8E8E8E);
  static const Color kGrey83 = Color(0xff838383);
  static const Color kGrey85 = Color(0xff858585);

  /* End of Colors */
  static const MaterialColor primaryMaterialColor = MaterialColor(
    0xff15558D,
    <int, Color>{
      50: Color(0xff15558D),
      100: Color(0xff15558D),
      200: Color(0xff15558D),
      300: Color(0xff15558D),
      400: Color(0xff15558D),
      500: Color(0xff15558D),
      600: Color(0xff15558D),
      700: Color(0xff15558D),
      800: Color(0xff15558D),
      900: Color(0xff15558D),
    },
  );

 /*start of gradient*/
  static const Gradient kPrimaryLinearGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[

      Color(0xff02BBBD),
      Color(0xff02BBBD),
      Color(0xff02BBBD),
      Color(0xff00C7C2),
      Color(0xff01CAC2),
      Color(0xff01D3C7),
      Color(0xff01D3C7),
      Color(0xff01D3C7),
    ],
    tileMode: TileMode.clamp,
  );


}