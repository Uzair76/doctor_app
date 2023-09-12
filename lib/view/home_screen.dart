
import 'package:doctor_app/constant/App_Colors.dart';
import 'package:doctor_app/utils/components/routes/routes_name.dart';

import 'package:doctor_app/view/screens/doctor_screen.dart';
import 'package:doctor_app/view/screens/medical_record_screen.dart';
import 'package:doctor_app/view/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

import '../constant/doctors_slider.dart';
import '../constant/images_constant.dart';
import '../view_modal/home_modal.dart';

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
       //Page Title
        title: const Text(
          'DocCare',
          style: TextStyle(color: AppColors.kPrimaryTextBlackColor),
        ),

        //notification
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.notifications,
                  size: 26.0,
                  color: AppColors.kPrimaryColor,
                ),
              )),
        ],
      ),


      //body
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
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )),
              ),

              //My Appointment
              Container(
                padding: const EdgeInsets.only(top: 8,bottom: 16),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteF7,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.pending_actions_sharp),
                    SizedBox(width: 10,),
                    Text("My Appointment",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),


            //Section2

              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Expanded(
                  child: Container(
                    height: 150,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Padding(
                          padding: EdgeInsets.only(left: 14.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                                  Text(
                                    "Looking for the Best\nDoctors?",
                                    style: TextStyle(
                                        color: AppColors.kPrimaryTextWhiteColor,
                                        fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Join for an Online Consultation",
                                    style: TextStyle(color: AppColors.kGrey,),
                                  )

                            ],
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Image(

                                  width: 111,
                                  height: 140,
                                  image: AssetImage(ImagesConst.Sectiontwo)),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              //Categories
              const SizedBox(height: 10,),
              const Text(
                "",
                style: TextStyle(
                  color: AppColors.kPrimaryTextBlackColor,
                  fontSize: 22,
                ),
              ),

             CustomList(),

              //Doctors
              const SizedBox(height: 30,),
              const Text(
                "Doctors",
                style: TextStyle(
                  color: AppColors.kPrimaryTextBlackColor,
                  fontSize: 22,
                ),
              ),
              const CustomSlider()

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

   const CustomSlider({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),

        scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          separatorBuilder: (context,_)=>const SizedBox(width: 12,),
          itemBuilder: (BuildContext context,int index){
            Popular populars = destinations[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DoctorsScreen(Popular: populars),
                ),
              ),
              // child: Container(
                // margin: const EdgeInsets.only(right: 15),
                // width: 230,
                //color: Colors.red,
                child: Container(
                  height: 230,
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppColors.kWhiteF7,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(

                    children: [

                      Hero(
                        // for animation of image to next screen
                        tag: populars.imageUrl,

                        child: ClipRRect(

                          borderRadius: BorderRadius.circular(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0, bottom: 12.2),
                              child: Image(
                                height:190,
                                width: 150,
                                image: AssetImage(populars.imageUrl),

                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(populars.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text(populars.subtitle,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  
                ),
                
              // ),
            );

          }
     ),
    );
  }}
//   Widget buildCard(
//    {required CardItem item}
//       )=>Container(
//     height: 256,
//      child: Column(
//       children: [
//         Expanded(child: AspectRatio(
//             aspectRatio: 4/3,
//             child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Material(
//                   child: Builder(
//                     builder: (context)=>Ink.image(
//                     image: AssetImage(ImagesConst.ksliderimg3),
//                   child: InkWell(
//                     onTap: (){
//                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorsScreen(items: item)));
//                     },
//                   ),),)
//                 )
//             ))),
//         Text(
//           item.title,style: TextStyle(
//           fontSize: 20,color: AppColors.kPrimaryTextBlackColor
//         ),
//
//         ),
//    Text(
//    item.subtitle,style: TextStyle(
//    fontSize: 18,color: AppColors.kPrimaryTextBlackColor
//    ),
//    )
//         ],
//     ),
//
//   );
// }






//****************************************************************************************************************




