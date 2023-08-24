import 'package:doctor_app/utils/components/custom_round_button.dart';
import 'package:doctor_app/utils/components/routes/routes_name.dart';
import 'package:doctor_app/constant/App_Colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){},
          child: Icon(
            Icons.menu,
            color: AppColors.kBlack,
          ),
        ),

        title: Text('DocCare',style: TextStyle(
          color: AppColors.kPrimaryTextBlackColor
        ),
       ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.notifications,
                  size: 26.0,
                  color: AppColors.kBlack,
                ),
              )
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(
                  padding: const EdgeInsets.only(top: 16,bottom: 16),
                  child: TextFormField(
                      controller: searchController,
                      decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: 'search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                    )

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8),
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.kPrimaryColor,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child:const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0,top: 18),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Looking for \nSpecialist Doctor?",style: TextStyle(
                                    color: AppColors.kPrimaryTextWhiteColor,fontSize:24
                                  ),),
                                  SizedBox(height: 5,),
                                  Text("join with an online consultation",style: TextStyle(
                                    color: AppColors.kGrey
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                              width:  150,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/doc1.jfif')),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Text("Categories",style: TextStyle(color: AppColors.kPrimaryTextBlackColor,fontSize: 22,),),
                Padding(
                  padding: const EdgeInsets.only(top: 8,),
                  child: SizedBox(
                    height: 120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colorList.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context,index){

                      return GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          height: 120,
                          width: 80,

                          margin: EdgeInsets.all(4),

                          decoration: BoxDecoration(
                            color: colorList[index],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 24),)),
                        ),
                      );
                    }),
                  ),
                ),

                Text("Diseases",style: TextStyle(color: AppColors.kPrimaryTextBlackColor,fontSize: 22,),),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colorList.length,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context,index){

                        return GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            height: 120,
                            width: 80,

                            margin: EdgeInsets.all(4),

                            decoration: BoxDecoration(
                                color: colorList[index],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 24),)),
                          ),
                        );
                      }),
                ),
              ],
            ),
          
        ),
      ),
    );
  }
  List<Color> colorList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.teal,
    // Add more colors as needed
  ];
}
