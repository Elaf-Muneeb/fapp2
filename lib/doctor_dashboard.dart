import 'package:HeartDisease/controllers/doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/patient_controller.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({super.key});

  @override
  State<DoctorDashboard> createState() => _DoctorDashboard();
}

class _DoctorDashboard extends State<DoctorDashboard> {
  final PatientController _Doctorcontroller = Get.find<PatientController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Dashboard'),
      ),
      body: Obx(() {
        if (_Doctorcontroller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (_Doctorcontroller.doctorData.isEmpty) {
          return const Center(child: Text('No data available'));
        }
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    // _Doctorcontroller.doctorData['imageUrl'] != null
                    //     ? CircleAvatar(
                    //   radius: 64,
                    //   backgroundImage: NetworkImage(_Doctorcontroller.doctorData['imageUrl']),
                    // )
                    //     : const CircleAvatar(
                    //   radius: 64,
                    //   backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    // ),
                 Column(
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            'Name: Dr. ${_Doctorcontroller.doctorData['name']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            'Specialization: ${_Doctorcontroller.doctorData['specialization']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'Contact: ${_Doctorcontroller.doctorData['phone']}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          // const SizedBox(height: 5),
                          // Text(
                          //   'Email: ${_Doctorcontroller.doctorData['email']}',
                          //   style: const TextStyle(fontSize: 16),
                          // ),
                          // const SizedBox(height: 20),
                          // const Text(
                          //   'Appointments',
                          //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          // ),
                          // const SizedBox(height: 10),
                          // Obx(() {
                          //   if (_controller.appointments.isEmpty) {
                          //     return const Center(child: Text('No appointments available'));
                          //   }
                          //   return ListView.builder(
                          //     shrinkWrap: true,
                          //     physics: const NeverScrollableScrollPhysics(),
                          //     itemCount: _controller.appointments.length,
                          //     itemBuilder: (context, index) {
                          //       final appointment = _controller.appointments[index];
                          //       return ListTile(
                          //         title: Text('Patient: ${appointment['Name']}'),
                          //         subtitle: Text('Time: ${appointment['timeSlot']}'),
                          //       );
                          //     },
                          //   );
                          // }),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

