
import 'package:doctor_app/constant/App_Colors.dart';
//import 'package:doctor_app/utils/components/routes/routes_name.dart';

import 'package:doctor_app/view/screens/doctor_screen.dart';
//import 'package:doctor_app/view/screens/medical_record_screen.dart';
//import 'package:doctor_app/view/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

//import '../constant/doctors_slider.dart';
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

        iconTheme: const IconThemeData(color: Colors.black),

        // leading: const Icon(
        //   Icons.menu,
        //   color: AppColors.kBlack,
        // ),
//automaticallyImplyLeading: true,
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
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                // decoration: BoxDecoration(
                //   color: Colors.teal
                // ),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 50,
                      //  backgroundImage: AssetImage(ImagesConst.ksliderimg3),
                        // child:
                        // Image(image: AssetImage(ImagesConst.ksliderimg3),
                        // ),
                      ),

                      SizedBox(height: 10,),
                      Text('User Name',style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,

              ),
              ListTile(
                leading: Icon(Icons.policy_outlined,color: AppColors.kBlack,),
                title: Text('Privacy Policy',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
              ListTile(
                leading: Icon(Icons.location_history,color: AppColors.kBlack,),
                title: Text('Change Loacation',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
              ListTile(
                leading: Icon(Icons.medical_services_outlined,color: AppColors.kBlack,),
                title: Text('Your Appointment',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
              ListTile(
                leading: Icon(Icons.search,color: AppColors.kBlack,),
                title: Text('Search Doctor',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
              ListTile(
                leading: Icon(Icons.search,color: AppColors.kBlack,),
                title: Text('Search Doctor',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
              ListTile(
                leading: Icon(Icons.tab,color: AppColors.kBlack,),
                title: Text('Health Blogs',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,

              ),
              Spacer(),
              ListTile(
                leading: Icon(Icons.logout,color: AppColors.kBlack,),
                title: Text('Logout',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),

              ),
            ],
          ),
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
                padding: const EdgeInsets.only(top: 8,bottom: 16),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteF7,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: const Row(
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
                "Doctors",
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


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.separated(
        padding: EdgeInsets.all(16),

        scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          separatorBuilder: (context,_)=>SizedBox(width: 12,),
          itemBuilder: (BuildContext context,int index){
            Popular populars = destinations[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DoctorsScreen(Popular: populars),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 15),
                width: 230,
                //color: Colors.red,
                child: Container(
                  width: 230,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      Hero(
                        // for animation of image to next screen
                        tag: populars.imageUrl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 160.0,
                                width: 180.0,
                                image: AssetImage(populars.imageUrl),
                                fit: BoxFit.cover,
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
                
              ),
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




