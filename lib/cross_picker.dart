library cross_picker;

import 'package:cross_picker/cross_picker.dart'
    if (dart.library.io) 'package:image_picker/image_picker.dart'
    if (dart.library.html) 'package:universal_html/prefer_universal/html.dart' as html;
import 'package:flutter/material.dart';

CrossPicker getPicker() => throw UnsupportedError('Cannot create a cross picker');

    abstract class CrossPicker{
      Future<Image> getImage();
      factory CrossPicker() => getPicker();
    }