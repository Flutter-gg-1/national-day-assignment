import 'package:saudi_assignment/data/questions.dart';
import 'package:get_it/get_it.dart';

void setup() {
  GetIt.I.registerSingleton<Questions>(Questions());
}