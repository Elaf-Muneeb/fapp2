//import 'package:HeartDisease/Doctor.dart';
import 'package:HeartDisease/FirstPage.dart';
import 'package:HeartDisease/controllers/doctor_controller.dart';
import 'package:HeartDisease/controllers/patient_controller.dart';
import 'package:HeartDisease/doctor_dashboard.dart';
import 'package:HeartDisease/login.dart';
import 'package:HeartDisease/login_doctor.dart';
import 'package:HeartDisease/patient.dart';
import 'package:HeartDisease/SplashScreen.dart';
import 'package:HeartDisease/patient_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
// import 'controllers/appointment_controller.dart';
import 'doctor.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(() => PatientController());
  //   // Get.put(() => AppointmentController());
  //Get.put(() => DoctorController());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(GetMaterialApp(
    initialBinding:  BindingsBuilder(() {
      Get.put(() => PatientController());
    //   // Get.put(() => AppointmentController());
      //Get.put(() => DoctorController());
    }),
    debugShowCheckedModeBanner: false,
    home: const Splashscreen(),
    routes: {
      'FirstPage': (context) => const FirstPage(),
      'login': (context) => const LoginPatient(),
      'patient': (context) => const PatientPage(),
      //'doctor': (context) => const DoctorPageState(),
      'login_doctor': (context) => const LoginDoctor(),
      'doctor_dashboard': (context) => const DoctorDashboard(),
      'patient_dashboard': (context) => const PDashboard()
    },
  ));
}
