import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async{
  final ImagePicker _imagepicker = ImagePicker();
  XFile? file = await _imagepicker.pickImage(source: source);
  if(file != null)
    {
      return await file.readAsBytes();
    }
  debugPrint('No Image Selected');
}
