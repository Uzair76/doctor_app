import 'package:flutter/material.dart';

class PreviousAppointmentScreen extends StatefulWidget {
  const PreviousAppointmentScreen({super.key});

  @override
  State<PreviousAppointmentScreen> createState() => _PreviousAppointmentScreenState();
}

class _PreviousAppointmentScreenState extends State<PreviousAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Previous appointments"),
    );
  }
}
