// import 'package:flutter/material.dart';
// import 'package:weather_app/screens/Search.dart';
// import 'package:weather_app/widgets/noSerchWid.dart';

// class NosearchWid extends StatelessWidget {
//   const NosearchWid({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           actions: [
//             IconButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return const Search();
//                     },
//                   ),
//                 );
//               },
//               icon: const Icon(
//                 size: 30,
//                 Icons.search,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//           backgroundColor: const Color(0xfffdae3e),
//           title: const Text(
//             "Let's Search ",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: noSearchwid());
//   }
// }

