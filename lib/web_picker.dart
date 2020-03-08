import 'dart:convert';
import 'dart:typed_data';

import 'package:cross_picker/cross_picker.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

class WebPicker implements CrossPicker {
  @override
  Future<Uint8List> getImage() async {
    print('aeaaa');
    html.InputElement uploadInput = html.FileUploadInputElement();
    uploadInput.multiple = true;
    uploadInput.draggable = true;
    uploadInput.click();
    return uploadInput.onChange.first.then((e) {
      final reader = html.FileReader();
      reader.readAsDataUrl(uploadInput.files[0]);
      return reader.onLoad.first.then((res) {
        final encoded = reader.result as String;
        final stripped =
            encoded.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
        return Base64Decoder().convert(stripped);
      });
    });
  }
}

CrossPicker getPicker() => WebPicker();
