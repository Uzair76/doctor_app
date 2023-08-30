
import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildCard()

      ],
    );

  }
  Widget buildCard()=>Container(
    width: 200,
    height: 200,
    color: Colors.red,

  );
}
