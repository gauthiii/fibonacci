import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fibonacci/fibonacci.dart';

void main() {
  test('adds one to input values', () {
    if (kDebugMode) {
      print(Fibonacci.printSeries(size: 4));
    }
  });
}
