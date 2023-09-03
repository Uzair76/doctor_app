import 'package:flutter/material.dart';

class PatientRecordScreen extends StatefulWidget {
  const PatientRecordScreen({super.key});

  @override
  State<PatientRecordScreen> createState() => _PatientRecordScreenState();
}

class _PatientRecordScreenState extends State<PatientRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Record"),
    );
  }
}
