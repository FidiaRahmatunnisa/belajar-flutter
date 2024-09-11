import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  int _quantiti = 0;
  int get quantiti => _quantiti;
  set quantiti(int value) {
    _quantiti = value;
    notifyListeners();
  }
}
