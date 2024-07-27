import 'package:flutter/material.dart';
import 'package:HeartDisease/patient.dart';

class DoctorDashboard extends StatefulWidget {
  const DoctorDashboard({super.key});

  @override
  State<DoctorDashboard> createState() => _DoctorDashboard();
}

class _DoctorDashboard extends State<DoctorDashboard> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Dashboard'),
      ),
    );
  }
}