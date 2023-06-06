import 'package:flutter/material.dart';

class VisibilityProvider with ChangeNotifier {
  bool _isVisible = true;

  bool get isVisible => _isVisible;

  void toggleVisibility() {
    _isVisible = false;
    notifyListeners();
  }
}
