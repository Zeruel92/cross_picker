import 'dart:html';

import 'package:cross_picker/cross_picker.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

class WebPicker implements CrossPicker {
  @override
  Future<Image> getImage() async {
    html.InputElement uploadInput = html.FileUploadInputElement();
    uploadInput.multiple = true;
    uploadInput.draggable = true;
    uploadInput.click();
    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      final file = files[0];
      final reader = new html.FileReader();
      reader.onLoadEnd.listen((e) {

      });
    });
  }
}
