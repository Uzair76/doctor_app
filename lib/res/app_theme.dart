import 'package:flutter/material.dart';
import 'package:doctor_app/constant/App_Colors.dart';

final appTheme= ThemeData(
  primarySwatch: AppColors.primaryMaterialColor,
  scaffoldBackgroundColor: AppColors.kWhite ,
  appBarTheme: const AppBarTheme(
    color: AppColors.kWhite,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 20,
      color: AppColors.kPrimaryTextBlackColor)),
  textTheme:  const TextTheme(
    headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        ),
    headline2: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),

    headline3: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,),
  )
);


