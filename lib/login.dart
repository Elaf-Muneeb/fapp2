import 'package:HeartDisease/controllers/patient_controller.dart';
import 'package:HeartDisease/patient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final PatientController _controller = Get.put(PatientController());


  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Login Page'),
    ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {

                // Handle login button press
                String email = _emailController.text.trim();
                String password = _passwordController.text.trim();
                // Here you can add login logic
                print('Email: $email');
                print('Password: $password');

                _controller.signInUser(email, password);



              },
              child: Text('Login'),
            ),
          ],
        ),
      )
    );
  }
}

