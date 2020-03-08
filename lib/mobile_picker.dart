import 'dart:typed_data';

import 'package:cross_picker/cross_picker.dart';
import 'package:image_picker/image_picker.dart';

class MobilePicker implements CrossPicker {
  @override
  Future<Uint8List> getImage() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    return image.readAsBytesSync();
  }
}

CrossPicker getPicker() => MobilePicker();
