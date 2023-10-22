import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/utils/components/custom_round_button.dart';
import 'package:doctor_app/view/my_work/drop_down_button.dart';
import 'package:flutter/material.dart';

class FactScreen extends StatefulWidget {
  const FactScreen({super.key});

  @override
  State<FactScreen> createState() => _FactScreenState();
}

class _FactScreenState extends State<FactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.kGrey,
          appBar: AppBar(
            backgroundColor: AppColors.kGrey,
            title: const Text("FAQs"),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  DropDownButton(buttonText: 'How to get an Appointment?',
                  menuItems: const [
                    Column(
                      children: [
                        Text('allll'),
                        Text('allll'),
                        Text('allll'),
                        Text('allll'),
                        Text('allll'),
                      ],
                    )
                  ],),
                  SizedBox(height: 7,),
                  DropDownButton(buttonText: 'What is the procedure?',
                    menuItems: const [
                      Column(
                        children: [
                          Text('allll'),
                          Text('allll'),
                          Text('allll'),
                          Text('allll'),
                          Text('allll'),
                        ],
                      )
                    ],),
                  SizedBox(height: 7,),
                  DropDownButton(buttonText: 'How to find Doctor?',
                    menuItems: const [
                      Column(
                        children: [
                          Text('alllljnferuifnurnjnu\n jnfurnefunrufninfu\n jfnnrfurnujn\n fnfn'),
                          Text('allll'),
                          Text('allll'),
                          Text('allll'),
                          Text('allll'),
                        ],
                      )
                    ],),

                ],
              ),
            ),
          ),

        ));
  }
}
