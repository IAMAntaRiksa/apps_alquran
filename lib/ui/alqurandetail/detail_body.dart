// import 'package:alquran/data/model/alquranDetailModel/ayat_detail.dart';
// import 'package:alquran/data/network/api_client_response.dart';
// import 'package:alquran/ui/alqurandetail/componets/detail_view.dart';
// import 'package:alquran/values/assets.dart';
// import 'package:alquran/values/style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class DetailBody extends StatefulWidget {
//   const DetailBody({Key? key, required this.alquranId}) : super(key: key);
//   final String alquranId;

//   @override
//   State<DetailBody> createState() => _DetailBodyState();
// }

// ApiClientResponse apiClientResponse = ApiClientResponse();

// class _DetailBodyState extends State<DetailBody> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: apiClientResponse.fetchDetailData(widget.alquranId),
//         builder: (context, AsyncSnapshot snapshot) {
//           if (snapshot.hasData) {
//             if (snapshot.data != null) {
//               Ayat dataa = snapshot.data;
//               return SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(24),
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           Container(
//                             height: 257,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(35),
//                               image: const DecorationImage(
//                                 image: AssetImage(
//                                   imageDetail,
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Positioned(
//                             top: 20,
//                             child: Column(
//                               children: [
//                                 Text('ada', style: textTitle),
//                                 Text('The Opening', style: textTitle),
//                                 const SizedBox(height: 10),
//                                 const Divider(
//                                   height: 20,
//                                   thickness: 20,
//                                   color: Colors.black,
//                                 ),
//                                 Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text('Meccan ', style: textTitle),
//                                     const SizedBox(width: 3),
//                                     SvgPicture.asset(
//                                       iconelive,
//                                       height: 10,
//                                     ),
//                                     const SizedBox(width: 3),
//                                     Text('Verses', style: textTitle)
//                                   ],
//                                 ),
//                                 const SizedBox(height: 30),
//                                 Text('Tampilkan AYAT', style: textTitle),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     HomeDetailViews(detailView: dataa)
//                   ],
//                 ),
//               );
//             }
//           }
//           return const Center(child: CircularProgressIndicator());
//         });
//   }
// }
