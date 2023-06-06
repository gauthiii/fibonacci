library fibonacci;

class Fibonacci {
  static List printSeries({required int size}) {
    if (size < 0) {
      return ["Enter Positive Integer Only"];
    } else if (size == 0) {
      return [0];
    } else if (size == 1) {
      return [0, 1, 1];
    } else {
      List<num> list = [];
      num n1 = 0, n2 = 1, n3;
      list.add(n1);
      list.add(n2);

      for (int i = 2; i <= size; i++) {
        n3 = n1 + n2;
        if (n3 <= size) {
          if (n3 > 0) {
            list.add(n3);
          } else {
            list.add(0);
          }
          n1 = n2;
          n2 = n3;
        } else {
          break;
        }
      }
      return list;
    }
  }

  static printValue({required int index}) {
    if (index <= 0) {
      return "Enter Positive Integer Only";
    } else if (index == 1) {
      return 0;
    } else if (index <= 3) {
      return 1;
    } else {
      num n1 = 1, n2 = 1, n3 = 0;

      for (num i = 2; i <= index - 2; i++) {
        n3 = n1 + n2;

        n1 = n2;
        n2 = n3;
      }
      if (n3 > 0) {
        return n3;
      } else {
        return "Value out of range";
      }
    }
  }
}
