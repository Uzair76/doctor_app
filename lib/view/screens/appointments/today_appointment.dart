import 'package:flutter/material.dart';

class TodayAppointmentScreen extends StatefulWidget {
  const TodayAppointmentScreen({super.key});

  @override
  State<TodayAppointmentScreen> createState() => _TodayAppointmentScreenState();
}

class _TodayAppointmentScreenState extends State<TodayAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("today appointments"),
    );
  }
}
