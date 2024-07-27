import 'package:flutter/material.dart';
import 'package:HeartDisease/Doctor.dart';

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable Page'),
      ),
      body: SizedBox(
        width: 900, // Set the desired width for the ListView
        height: 500, // Set the desired height for the ListView
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Item $index',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}