import '../constant/images_constant.dart';
// class items {
//   final String AssetImage;
//   final String title;
//   final String subtitle;
//   const CardItem({
//     required this.AssetImage,
//     required this.title,
//     required this.subtitle
//   });
// }
//
// List<CardItem> items=[
//   const CardItem(
//       AssetImage: 'ImagesConst.ksliderimg1',
//       title: 'doctor',
//       subtitle: '43'
//   ),



class Popular {
  String imageUrl;
  String title;
  String subtitle;

  //List<Activity> activities;

  Popular({
    required this.imageUrl,
    required this.title,
    required this.subtitle,

  });
}

//destination data
List<Popular> destinations = [
  Popular(
    imageUrl: ImagesConst.ksliderimg1,
    title: 'Number 1',
    subtitle: '43',

  ),
  Popular(
    imageUrl: ImagesConst.ksliderimg2,
    title: 'Number 2',
    subtitle: '43',

  ),
  Popular(
    imageUrl: ImagesConst.ksliderimg3,
    title: 'Number 3',
    subtitle: '43',

  ),
  Popular(
    imageUrl: ImagesConst.ksliderimg4,
    title: 'Number 4',
    subtitle: '43',

  ),
  Popular(
    imageUrl: ImagesConst.ksliderimg5,
    title: 'Number 5',
    subtitle: '43',

  ),
  Popular(
    imageUrl: ImagesConst.ksliderimg4,
    title: 'Number 6',
    subtitle: '43',

  ),
  Popular(
    imageUrl: ImagesConst.ksliderimg5,
    title: 'Number 7',
    subtitle: '43',

  ),
];


