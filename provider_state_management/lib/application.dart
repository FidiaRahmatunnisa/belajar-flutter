import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Application extends ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners(); // Memberitahu bahwa ada perubahan
  }

  Color get color => _isLightBlue ? Colors.lightBlue : Colors.red;
}
