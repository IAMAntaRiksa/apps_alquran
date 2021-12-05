// import 'package:alquran/data/model/alquranDetailModel/ayat_detail.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import 'package:alquran/values/assets.dart';

// class HomeDetailItemAlquran extends StatelessWidget {
//   const HomeDetailItemAlquran({
//     Key? key,
//     required this.ayatDetail,
//   }) : super(key: key);
//   final Ayat ayatDetail;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: SvgPicture.asset(iconRecht),
//                   ),
//                   Positioned(
//                     child: Text('${ayatDetail.ayat.proses}',
//                         style: const TextStyle(color: Colors.white)),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                       onPressed: () {}, icon: SvgPicture.asset(iconShare)),
//                   IconButton(
//                       onPressed: () {}, icon: SvgPicture.asset(iconPlay)),
//                   IconButton(
//                       onPressed: () {}, icon: SvgPicture.asset(iconSave)),
//                 ],
//               )
//             ],
//           ),
//           const SizedBox(height: 25),
//           Text('${ayatDetail.ayat.data.ar.map((e) => e.teks)}')
//         ],
//       ),
//     );
//   }
// }
