
import 'package:cross_picker/cross_picker.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:image_picker/image_picker.dart';

class MobilePicker implements CrossPicker{
  @override
  Future<Image> getImage() async{
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    return Image.file(image);
  }
}