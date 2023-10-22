import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/view/my_work/faqs.dart';
import 'package:doctor_app/view/my_work/setting.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,
      appBar: AppBar(
        backgroundColor: AppColors.kGrey,
        title: const Text("Help Center"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ReuseableButton(text: 'Contact us live', icon: Icons.arrow_forward_ios),
            ReuseableButton(text: 'Send us an Email', icon: Icons.arrow_forward_ios),
            ReuseableButton(text: 'FAQs', icon: Icons.arrow_forward_ios, onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FactScreen()));
            },),
          ],
        ),
      ),

    );
  }
}
