import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/view/my_work/Notification.dart';
import 'package:doctor_app/view/my_work/change_password.dart';
import 'package:doctor_app/view/my_work/edit_profile.dart';
import 'package:doctor_app/view/my_work/help_center.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,
      appBar: AppBar(
        backgroundColor: AppColors.kGrey,
        title: const Text("Setting"),
      ),
      body: SafeArea(
        child: Column(
          children: [

            ReuseableButton(text: ' Edit Profile', icon: Icons.arrow_forward_ios,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
            },),
            ReuseableButton(text: 'Change Password', icon: Icons.arrow_forward_ios,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
            },),
            ReuseableButton(text: 'Notification Setting', icon: Icons.arrow_forward_ios,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationSetting()));
            },),
            ReuseableButton(text: 'Select Language', icon: Icons.arrow_forward_ios),
            ReuseableButton(text: 'Help Center', icon: Icons.arrow_forward_ios,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpCenter()));
            },),

          ],
        ),
      ),

    );
  }
}

class ReuseableButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap; // Add a VoidCallback for onTap

  const ReuseableButton({
    Key? key,
    required this.text,
    required this.icon,
    this.onTap, // Make onTap optional by providing a default value of null
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Wrap your content with GestureDetector
      onTap: onTap, // Assign onTap to GestureDetector's onTap
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kWhiteF7,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text),
                Icon(icon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
