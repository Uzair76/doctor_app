import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/constant/images_constant.dart';
import 'package:doctor_app/utils/components/custom_round_button.dart';
import 'package:doctor_app/view/my_work/account.dart';
import 'package:doctor_app/view/my_work/custom_text_field.dart';
import 'package:doctor_app/view/my_work/drop_down_button.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.kGrey,
      appBar: AppBar(
        backgroundColor: AppColors.kGrey,
        title: const Text("Edit Profile"),
      ),
      body:   SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(


              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [
                Center(
                  child: const CircleAvatar(
                    backgroundColor: AppColors.kBlack,
                    radius: 60,
                    child: Image(
                      image: AssetImage(ImagesConst.DocotorBlueShirt),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                const CustomTextField(hint: 'Enter Name'),
                const CustomTextField(hint: 'Enter Email'),
                const CustomTextField(hint: 'Enter Number'),
                DropDownButton(buttonText: 'Enter Gender',
                  menuItems: [

                    Text('Male'),
                    Text('Female')
                  ],
                ),
                SizedBox(height: 15,),
                const CustomTextField(hint: 'Enter DoB'),

                SizedBox(height: 110,),
                RoundButton(
                    title: 'Update',
                    onTap: (){},),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
