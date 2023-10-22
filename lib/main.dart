import 'package:doctor_app/res/app_theme.dart';
import 'package:doctor_app/view/my_work/setting.dart';
import 'package:flutter/material.dart';

import 'utils/components/routes/routes.dart';
import 'utils/components/routes/routes_name.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      //home: const SettingScreen(),

      initialRoute: RouteName.BottomNavi,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

