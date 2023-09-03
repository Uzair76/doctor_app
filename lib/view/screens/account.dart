import 'package:doctor_app/constant/App_Colors.dart';
import 'package:flutter/material.dart';

import '../../utils/components/routes/routes_name.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrey,

      body: Stack(
        children: [
          Positioned(
              top: 0.0,
              child: Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: const BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40,left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, RouteName.BottomNavi);
                          },
                          child: const Center(child: Icon(Icons.arrow_back_ios)),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ),
          Positioned(
              top: 130,
              left: 30,
              right: 30,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.kWhite
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.kPrimaryColor
                      ),
                      child: const Center(child: Text("no image",style: TextStyle(color: AppColors.kPrimaryTextWhiteColor),)),

                    ),
                    const SizedBox(width: 20,),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children:[
                              SizedBox(
                                height: 15,
                              ),
                              Text('Name:', style:  TextStyle(
                                  color: AppColors.kPrimaryColor,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(
                                height: 10,
                              ),
                              Text('ID: ', style:   TextStyle(
                                  color: AppColors.kPrimaryColor,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
          ),
        Positioned(
             top: 280,
             left: 15,
              right: 15,
              bottom: 0.0,

              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
            children: [
                  const Row(
                    children: [
                      Icon(Icons.account_circle,size: 35,color: AppColors.kPrimaryColor,),
                      SizedBox(width: 10,),
                      Text("Account",style: TextStyle(color: AppColors.kBlack,fontWeight: FontWeight.bold,fontSize: 20),)
                    ],
                  ),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),

              const Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(

                  children: [
                    Icon(Icons.help,size: 35,color: AppColors.kPrimaryColor,),
                    SizedBox(width: 10,),
                    Text("Contact and Help",style: TextStyle(color: AppColors.kBlack,fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),
              const Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(

                  children: [
                    Icon(Icons.devices_other,size: 35,color: AppColors.kPrimaryColor,),
                    SizedBox(width: 10,),
                    Text("others",style: TextStyle(color: AppColors.kBlack,fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),
              CustomListButton( startIcon: Icons.person,
                  endIcon: Icons.arrow_forward_ios_outlined,
                  title:'Asim Taj'
                  , onTap: (){}
              ),
             SizedBox(height: 10,),
             const Column(
               crossAxisAlignment:CrossAxisAlignment.center,
               children: [
                 Text('testing version')
               ],
             )





          ],),

                ),
              ))

        ],
      ),
    );
  }
}

class CustomListButton extends StatelessWidget {

  final IconData startIcon,endIcon;
  final String title;
  final VoidCallback onTap;
  const CustomListButton({
    super.key,
    required this.startIcon,
    required this.endIcon,
    required this.title,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        dense: true,
        leading: Icon(startIcon
        ),
        title: Text(title,style: TextStyle(
          color: AppColors.kPrimaryColor,fontSize: 16
        ),),
        trailing: Icon(endIcon),
      ),
    );
  }
}

