import 'package:flutter/material.dart';

class DPrescriptionScreen extends StatefulWidget {
  const DPrescriptionScreen({super.key});

  @override
  State<DPrescriptionScreen> createState() => _DPrescriptionScreenState();
}

class _DPrescriptionScreenState extends State<DPrescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("My Prescription"),
    );
  }
}
