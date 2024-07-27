import 'package:HeartDisease/appointment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/appointment_controller.dart';
import 'controllers/patient_controller.dart';

class PDashboard extends StatefulWidget {
  const PDashboard({super.key});

  @override
  State<PDashboard> createState() => _PatientDashboardState();
}

class _PatientDashboardState extends State<PDashboard> {
  final PatientController _controller = Get.put(PatientController());
  final AppointmentController _appointmentController = Get.put(AppointmentController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Dashboard'),
      ),
      body: Obx(() {
        if (_controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (_controller.patientData.isEmpty) {
          return const Center(child: Text('No data available'));
        }

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _controller.patientData['imageUrl'] != null
                        ? CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                _controller.patientData['imageUrl']),
                          )
                        : const CircleAvatar(
                            radius: 64,
                            backgroundImage:
                                NetworkImage('https://via.placeholder.com/150'),
                          ),
                    const SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name: ${_controller.patientData['name']}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Age: ${_controller.patientData['age']}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Gender: ${_controller.patientData['gender']}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => AppointmentPage());
                    },
                    child: const Text("Book Appointment")),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.start,
                  children: [
                    Text("Appointments", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  ],
                ),
                Container(
                  height: 500,
                  child: Obx(() {
                    if (_appointmentController.isLoading.value) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (_appointmentController.appointments.isEmpty) {
                      return const Center(child: Text('No appointments found'));
                    }

                    return ListView.builder(
                      itemCount: _appointmentController.appointments.length,
                      itemBuilder: (context, index) {
                        final appointment =
                            _appointmentController.appointments[index];
                        return Column(
                          children: [
                            ListTile(
                              title: Text(
                                  '${appointment['firstName']} ${appointment['lastName']}'),
                              subtitle:
                                  Text('Disease: ${appointment['diseaseName']}'),
                            ),
                            const Divider(),
                          ],
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
