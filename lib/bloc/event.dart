import 'package:equatable/equatable.dart';
import 'package:eventnstate/model.dart';


abstract class BmiEvent extends Equatable{
  const BmiEvent();

  @override
  List<Object?> get props => [];

}

class LoadBmiCal extends BmiEvent{}

class AddBmi extends BmiEvent{
  final Bmi b;
  const AddBmi({required this.b});
}


