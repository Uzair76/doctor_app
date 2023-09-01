import 'package:doctor_app/view_modal/home_modal.dart';
import 'package:flutter/material.dart';

import '../../constant/App_Colors.dart';



class DoctorsScreen extends StatefulWidget {
  final Popular;
  const DoctorsScreen({super.key,required this.Popular});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 330,
                width: MediaQuery.of(context).size.width,
                decoration:const  BoxDecoration(
                  boxShadow:  [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0)
                  ],
                ),
                child: Hero(
                  tag: widget.Popular.imageUrl,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)
                    ),
                    child: Image(
                      image: AssetImage(widget.Popular.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //adding back arrow button
              Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:  AppColors.kGrey,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child:  Center(
                          child:  IconButton(
                            onPressed: () {
                              Navigator.pop(context);

                            },
                            icon: const Icon(Icons.arrow_back_ios, color: AppColors.kPrimaryColor,),
                            color: Colors.black,
                            iconSize: 20.0,
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color:  AppColors.kGrey,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child:  Center(
                          child:  IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_outline),
                              color: AppColors.kPrimaryColor,)
                          ),
                        ),

                    ],
                  )


              ),

            ],
          ),
        ],
      ),
    );}
}
