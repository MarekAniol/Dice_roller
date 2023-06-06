import 'dart:async';
import 'dart:math';

class TimerHelper {
  Timer? timer;
  Function? onTick;
  int _count = 0;
  int _rollCount = 10;

  void startTimer() {
    _count = 0;
    timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      _count++;
      onTick?.call();
      _rollCount = Random().nextInt(13) + 9;
      if (_count >= _rollCount) {
        timer.cancel();
      }
    });
  }

  void stopTimer() {
    timer?.cancel();
  }
}
