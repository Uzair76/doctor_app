import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/utils/components/custom_round_button.dart';
import 'package:doctor_app/view/screens/account.dart';
import 'package:doctor_app/view/screens/inbox.dart';
import 'package:doctor_app/view/screens/notification.dart';
import 'package:flutter/material.dart';

import '../constant/doctors_slider.dart';
import '../constant/images_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.menu,
            color: AppColors.kBlack,
          ),
        ),

        title: const Text(
          'DocCare',
          style: TextStyle(color: AppColors.kPrimaryTextBlackColor),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications,
                  size: 26.0,
                  color: AppColors.kBlack,
                ),
              )),
        ],
      ),
      body:
      SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: TextFormField(
                    controller: searchController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search),
                      hintText: 'search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 8,bottom: 16),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteF7,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    Icon(Icons.backpack_outlined),
                    SizedBox(width: 10,),
                    Text("My Appointment",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Looking for \nSpecialist Doctor?",
                                  style: TextStyle(
                                      color: AppColors.kPrimaryTextWhiteColor,
                                      fontSize: 24),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "join with an online consultation",
                                  style: TextStyle(color: AppColors.kGrey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [

                          Image(

                              width: 150,
                              fit: BoxFit.cover,
                              image: AssetImage(ImagesConst.ksliderimg1)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Text(
                "Categories",
                style: TextStyle(
                  color: AppColors.kPrimaryTextBlackColor,
                  fontSize: 22,
                ),
              ),
             CustomList(),
              const Text(
                "Diseases",
                style: TextStyle(
                  color: AppColors.kPrimaryTextBlackColor,
                  fontSize: 22,
                ),
              ),
              CustomSlider()

            ],
          ),
        ),

      ),

    );

  }

}

class CustomList extends StatelessWidget {
  CustomList({super.key});
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.teal,
    Colors.pink,
    Colors.greenAccent
    // Add more colors as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8,),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorList.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  height: 120,
                  width: 80,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: colorList[index],
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    index.toString(),
                    style: const TextStyle(fontSize: 24),
                  )),
                ),
              );
            }),
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {

   CustomSlider({super.key});
 List<CardItem> items=[
   const CardItem(
     AssetImage: ImagesConst.ksliderimg1,
     title: 'doctor',
     subtitle: '43'
   ),

   CardItem(
       AssetImage: ImagesConst.ksliderimg2,
       title: 'ahmad',
       subtitle: '54'
   ),

   CardItem(
       AssetImage: ImagesConst.ksliderimg3,
       title: 'khani',
       subtitle: '54'
   ),

   CardItem(
       AssetImage: ImagesConst.ksliderimg4,
       title: 'Axis',
       subtitle: '45'
   ),
   CardItem(
       AssetImage: ImagesConst.ksliderimg5,
       title: 'feroz',
       subtitle: '32'
   ),
 ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (context,_)=>SizedBox(width: 12,),
          itemBuilder: (context,index)=>buildCard(items: items[index]),
           ),
    );
  }
  Widget buildCard(
   {required CardItem items}
      )=>Container(
    height: 256,

    child: Column(
      children: [
        Expanded(child: AspectRatio(
            aspectRatio: 4/3,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(items.AssetImage)))),
        Text(
          items.title,style: TextStyle(
          fontSize: 20,color: AppColors.kPrimaryTextBlackColor
        ),

        ),
   Text(
   items.subtitle,style: TextStyle(
   fontSize: 18,color: AppColors.kPrimaryTextBlackColor
   ),
   )
      ],
    ),

  );
}

class CardItem {
  final String AssetImage;
  final String title;
  final String subtitle;
  const CardItem({
    required this.AssetImage,
    required this.title,
    required this.subtitle
});
}




//****************************************************************************************************************


