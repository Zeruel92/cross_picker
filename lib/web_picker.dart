import 'dart:convert';
import 'dart:io';

import 'package:cross_picker/cross_picker.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

class WebPicker implements CrossPicker {
  @override
  Future<File> getImage() async {
    File selectedFile;
    html.InputElement uploadInput = html.FileUploadInputElement();
    uploadInput.multiple = true;
    uploadInput.draggable = true;
    uploadInput.click();
    uploadInput.onChange.listen((e) {
      final files = uploadInput.files;
      final file = files[0];
      final reader = new html.FileReader();
      reader.onLoadEnd.listen((e) {
        final result = reader.result;
        final bytesData =
            Base64Decoder().convert(result.toString().split(",").last);
        selectedFile = File("uploaded-${DateTime.now()}");
        selectedFile.writeAsBytesSync(bytesData);
      });
    });
    return selectedFile;
  }
}
CrossPicker getPicker() => WebPicker();