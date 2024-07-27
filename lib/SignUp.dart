import 'package:HeartDisease/Doctor.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  String _userinput = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Added Scaffold here
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Center(
        child: SizedBox(
          width: 800,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 30),
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.5,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(labelText: 'Last Name',  contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.5,
                      ),
                    ),),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email',  contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.5,
                      ),
                    ),),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password',  contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.5,
                      ),
                    ),),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _confirmPasswordController,
                  decoration:
                      const InputDecoration(labelText: 'Confirm Password',  contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    _userinput = _firstNameController.text;
                    // Clear form fields after successful signup

                    print('First Name: ${_userinput}');
                    if (_formKey.currentState?.validate() ?? false) {
                      // If the form is valid, proceed with signup logic
                      // Here you can implement your signup functionality
                      // For now, let's just print the entered values

                      _formKey.currentState?.reset();

                      // Navigate to DoctorPage after form validation and signup logic
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorPage()),
                      );
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
