import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/utils/components/custom_round_button.dart';
import 'package:doctor_app/view/my_work/custom_text_field.dart';
import 'package:flutter/material.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,
      appBar: AppBar(
        backgroundColor: AppColors.kGrey,
        title: const Text("Change Password"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CustomTextField(hint: 'Current Password'),
                  CustomTextField(hint: 'New Password'),
                  CustomTextField(hint: 'Confirm New Password'),
                ],
              ),
              RoundButton(title: 'Update', onTap: (){})

            ],
          ),
        ),
      ),

    );
  }
}
