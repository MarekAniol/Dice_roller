import 'dart:math';

extension RandomElementListExtension<T> on List<T> {
  T get random => this[Random().nextInt(length)];
}
