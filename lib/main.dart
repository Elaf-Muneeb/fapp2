import 'package:HeartDisease/Doctor.dart';
import 'package:HeartDisease/FirstPage.dart';
import 'package:HeartDisease/SignUp.dart';
import 'package:HeartDisease/controllers/patient_controller.dart';
import 'package:HeartDisease/login.dart';
import 'package:HeartDisease/patient.dart';
import 'package:HeartDisease/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'controllers/appointment_controller.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  runApp(GetMaterialApp(
    initialBinding:  BindingsBuilder(() {
      Get.put(() => PatientController());
      Get.put(() => AppointmentController());
    }),

    debugShowCheckedModeBanner: false,
    home: const Splashscreen(),
    routes: {
      'FirstPage': (context) => const FirstPage(),
      'login': (context) => const Login(),
      'signup': (context) => const SignUpForm(),
      'patient': (context) => const PatientPage(),
      'doctor': (context) => const DoctorPage(),
    },
  ));
}
