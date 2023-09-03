import 'package:doctor_app/utils/components/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/constant/App_Colors.dart';
import 'Patient_Record/D_prescription.dart';
import 'Patient_Record/P_record.dart';

class MedicalRecordScreen extends StatefulWidget {
  const MedicalRecordScreen({super.key});

  @override
  State<MedicalRecordScreen> createState() => _MedicalRecordScreenState();
}

class _MedicalRecordScreenState extends State<MedicalRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.kWhite,
        appBar: AppBar(
          leading: IconButton(
            color: AppColors.kBlack,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){

              Navigator.pushNamed(context, RouteName.BottomNavi);
            },
          ),
          title: const Text("Patient Medical Record"),

        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.kGrey,
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: AppColors.kGrey8E,
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                    labelColor: AppColors.kBlack,
                    tabs: [
                      Tab(text: 'My Record',),
                      Tab(text: 'Doctors Prescriptions',)
                    ]
                ),


              ),
              Expanded(child: TabBarView(
                children: [
                  PatientRecordScreen(),
                  DPrescriptionScreen()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
