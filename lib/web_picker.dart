import 'dart:html';

import 'package:cross_picker/cross_picker.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:image_picker_web/image_picker_web.dart';
//import 'package:universal_html/prefer_universal/html.dart' as html;

class WebPicker implements CrossPicker {
  @override
  Future<Image> getImage() async {
   Image image = await ImagePickerWeb.getImage();
   return image;
  }
}
CrossPicker getPicker() => WebPicker();