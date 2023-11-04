import 'package:equatable/equatable.dart';

class Bmi extends Equatable {
  final int height;
  final int weight;

  Bmi({required this.height, required this.weight});

  @override
  List<Object?> get props => [height, weight];

  static List<Bmi> bmiCal = [
    Bmi(height: 152, weight: 45),
  ];
}
