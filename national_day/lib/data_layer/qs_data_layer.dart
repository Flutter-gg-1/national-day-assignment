import 'package:get_storage/get_storage.dart';

import '../model/qs_model.dart';

class QsDataLayer {
  final box = GetStorage();
  final List<QsModel> qsList = [];
}