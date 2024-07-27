import 'package:flutter/material.dart';
import 'package:HeartDisease/patient.dart';

class PDashboard extends StatefulWidget {
  const PDashboard({super.key});

  @override
  State<PDashboard> createState() => _PatientDashboard();
}

class _PatientDashboard extends State<PDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Dashboard'),
      ),
    );
  }
}
