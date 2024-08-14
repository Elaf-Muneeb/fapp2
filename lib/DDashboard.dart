// import 'package:HeartDisease/controllers/doc_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'controllers/doctor_controller.dart';
//
// class DDashboard extends StatelessWidget {
//   final DoctorController doctorController = Get.put(DoctorController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Doctor Dashboard'),
//       ),
//       body: Obx(() {
//         if (doctorController.doctorData.isEmpty) {
//           return Center(child: CircularProgressIndicator());
//         } else {
//           return Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Name: ${doctorController.doctorData['name']}',
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Email: ${doctorController.doctorData['email']}',
//                   style: TextStyle(fontSize: 18),
//                 ),
//               ],
//             ),
//           );
//         }
//       }),
//     );
//   }
// }
