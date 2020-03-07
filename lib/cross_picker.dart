library cross_picker;

import 'package:cross_picker/cross_picker.dart'
    if (dart.library.io) 'mobile_picker.dart'
    if (dart.library.html) 'web_picker.dart';
import 'package:flutter/material.dart';

import 'cross_picker_stub.dart';

    abstract class CrossPicker{
      Future<Image> getImage();
      factory CrossPicker() => getPicker();
    }