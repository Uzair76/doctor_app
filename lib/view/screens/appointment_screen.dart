import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/res/app_theme.dart';
import 'package:doctor_app/view/screens/appointments/PreviousAppointments.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/utils/components/routes/routes_name.dart';
import 'appointments/today_appointment.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: AppColors.kBlack,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pushNamed(context, RouteName.BottomNavi);
            }
          ),
          title: const Text("Appointments"),

          ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                  labelColor: AppColors.kBlack,
                  tabs: [
                    Tab(text: 'Today/Upcomming'),
                    Tab(text: 'Previous',),
                  ]),
            ),
            Expanded(
                child: TabBarView(
              children: [
                TodayAppointmentScreen(),
                PreviousAppointmentScreen()

              ],
            ))
          ],
        )
        ),
    );

  }
}

//
