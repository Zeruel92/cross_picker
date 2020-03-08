# cross_picker

Crossplatform Picker that combine [Image Picker][1] for mobile and [Universal Html][2] for the web

## Installing

- Add into pubspec.yaml 
```yaml
cross_picker:
    git:
      url: https://github.com/pspgt/cross_picker.git
```
- run `flutter pub get`
- Now import with `import 'package:cross_picker/cross_picker.dart';`

# Example 

```dart
CrossPicker picker = CrossPicker();
Uint8List imageBytes = await picker.getImage();
```

[//]: #Links
[1]: https://pub.dev/packages/image_picker
[2]: https://pub.dev/packages/universal_html