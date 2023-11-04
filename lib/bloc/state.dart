import 'package:equatable/equatable.dart';

import '../model.dart';

abstract class BmiState extends Equatable {
  const BmiState();

  @override
  List<Object?> get props => [];
}

class BmiInitial extends BmiState {}

class BmiLoaded extends BmiState {
final List<Bmi> bmi;

  BmiLoaded({required this.bmi});

  @override
  List<Object?> get props => [bmi];
}
