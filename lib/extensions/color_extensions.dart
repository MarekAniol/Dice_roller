import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_dice/providers/visibility_provider.dart';

extension VisibilityDotColorExtension on bool {
  Color? checkColor(Color? color) => this ? color : Colors.transparent;
}

extension VisibilityProviderExtension on BuildContext {
  Color? isVisibleColor(Color? color) => watchVisibility ? color : Colors.transparent;
  bool get watchVisibility => watch<VisibilityProvider>().isVisible;
  void get readVisibility => read<VisibilityProvider>().toggleVisibility();
}
