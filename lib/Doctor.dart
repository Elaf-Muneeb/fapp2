import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:HeartDisease/utlis.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor'),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    )
                        : const SizedBox(
                      height: 200,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundImage: NetworkImage(
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F013%2F042%2F571%2Foriginal%2Fdefault-avatar-profile-icon-social-media-user-photo-in-flat-style-vector.jpg&tbnid=VVinhj0hmixU0M&vet=12ahUKEwij0NvNhPSFAxUaTaQEHa34DpMQMygEegQIARBb..i&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Fvector-art%2F13042571-default-avatar-profile-icon-vector-social-media-user-photo-in-flat-style&docid=zPHZrLkhzPRhiM&w=1920&h=1920&q=default%20user%20profile&hl=en&ved=2ahUKEwij0NvNhPSFAxUaTaQEHa34DpMQMygEegQIARBb'),
                      ),
                    ),
                    Positioned(
                      bottom: 28,
                      left: 88,
                      child: IconButton(
                        onPressed: selectImage,
                        icon: const Icon(Icons.add_a_photo),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30.5,
                ),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Name',
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .black,
                              // You can set the color of the border here
                              width: 2.5, //
                            ) // You can set the width of the border here
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30.5,
                ),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Department',
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .black,
                              // You can set the color of the border here
                              width: 2.5, //
                            ) // You can set the width of the border here
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30.5,
                ),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Address',
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .black,
                              // You can set the color of the border here
                              width: 2.5, //
                            ) // You can set the width of the border here
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30.5,
                ),
                const SizedBox(
                  width: 800,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Phone Number',
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors
                                  .black,
                              // You can set the color of the border here
                              width: 2.5, //
                            ) // You can set the width of the border here
                        )),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 100, top: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the signup page
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10), // Adjust padding as needed
                          ),
                          child: const Text('Save Profile'),
                        ),
                      )),
                ]),
              ],
            ),
        ),
      ),
    );
  }
}