library cross_picker;

import 'package:cross_picker/cross_picker.dart'
    if (dart.library.io) 'package:image_picker/image_picker.dart'
    if (dart.library.html) 'package:image_picker_web/image_picker_web.dart';
import 'package:flutter/material.dart';


    abstract class CrossPicker{
      Future<Image> getImage();
    }