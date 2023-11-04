import 'dart:math';

class BmiRepo {
  double bmi = 0.0;

  String Calculate(int height, int weight) {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String result() {
    if (bmi < 18.5) {
      return "UnderWeight";
    } else if (18.5 <= bmi && bmi < 25) {
      return "Normal";
    } else if (25 <= bmi && bmi < 30) {
      return "Over Weight";
    }
    return "Obese";
  }
}
