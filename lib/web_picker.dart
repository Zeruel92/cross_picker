import 'package:cross_picker/cross_picker.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:image_picker_web/image_picker_web.dart';

class WebPicker implements CrossPicker{
  @override
  Future<Image> getImage() async {
    Image fromPicker = await ImagePickerWeb.getImage();
    return fromPicker;
  }
}