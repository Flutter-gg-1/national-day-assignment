import 'package:get_storage/get_storage.dart';
import 'package:national_day/dataQ/data_q.dart';

import '../model/qs_model.dart';

class QsDataLayer {
  final box = GetStorage();
  final List<QsModel> qsList = [];

  test() {
    return box.read('qsList');
  }

  lodData() {
    if (box.read('qsList') != null) {
      for (var element in dataQ) {
        qsList.add(QsModel.fromJson(element));
      }
    } else {
      for (var element in List.from(box.read('qsList')).cast<dynamic>()) {
        qsList.add(QsModel.fromJson(element));
      }
      box.write('qsList', qsList);
    }
  }

  saveData() {
    box.write('qsList', List.from(dataQ).cast<dynamic>());
  }
}
