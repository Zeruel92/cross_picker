library cross_picker;

import 'dart:io';

import 'cross_picker_stub.dart'
    if (dart.library.io) 'mobile_picker.dart'
    if (dart.library.html) 'web_picker.dart';

abstract class CrossPicker {
  Future<File> getImage();

  factory CrossPicker() => getPicker();
}
