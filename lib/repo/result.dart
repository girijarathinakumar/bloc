// import 'dart:async';
//
// class BmiBloc {
//   final _heightController = StreamController<double>();
//   final _weightController = StreamController<double>();
//   final _bmiController = StreamController<double>();
//
//   // Input streams
//   StreamSink<double> get heightInput => _heightController.sink;
//   StreamSink<double> get weightInput => _weightController.sink;
//
//   // Output streams
//   Stream<double> get bmiOutput => _bmiController.stream;
//
//   BmiBloc() {
//     // Calculate BMI based on height and weight inputs
//     Stream<double>.combineLatest([_heightController.stream, _weightController.stream], (values) {
//       double height = values[0];
//       double weight = values[1];
//       if (height > 0 && weight > 0) {
//         return weight / ((height / 100) * (height / 100));
//       } else {
//         return 0.0;
//       }
//     }).listen((bmi) {
//       // Add calculated BMI to the output stream
//       _bmiController.sink.add(bmi);
//     });
//   }
//
//   void dispose() {
//     _heightController.close();
//     _weightController.close();
//     _bmiController.close();
//   }
//
// }
