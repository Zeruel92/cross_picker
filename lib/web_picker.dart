import 'dart:convert';
import 'dart:io';
import 'package:cross_picker/cross_picker.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

class WebPicker implements CrossPicker {
  @override
  Future<Image> getImage() async {
   Image image = await ImagePickerWeb.getImage();
   return image;
  }
}
CrossPicker getPicker() => WebPicker();