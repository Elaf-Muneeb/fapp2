import 'package:flutter/material.dart';

class Appointmentpage extends StatefulWidget {
  const Appointmentpage({super.key});

  @override
  State<Appointmentpage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<Appointmentpage> {
  String? selectedValue;
  String? selectedHistory;
  String? diseaseName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointment Booking'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                SizedBox(
                  width: 800,
                  child: DropdownButtonFormField<String>(
                    hint: const Text('Gender'),
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Age',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                SizedBox(
                  width: 800,
                  child: DropdownButtonFormField<String>(
                    hint: const Text('Disease Name'),
                    value: diseaseName,
                    onChanged: (String? newValue) {
                      setState(() {
                        diseaseName = newValue!;
                      });
                    },
                    items: <String>['Male', 'Female']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Available Doctor',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Time Slot',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.5),
                SizedBox(
                  width: 800,
                  child: DropdownButtonFormField<String>(
                    hint: const Text('Previous History'),
                    value: selectedHistory,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedHistory = newValue!;
                      });
                    },
                    items: <String>['Yes', 'No']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the signup page
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10), // Adjust padding as needed
                  ),
                  child: const Text('Book Appointment'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
