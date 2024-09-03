import 'package:get_storage/get_storage.dart';
import 'package:national_day/dataQ/data_q.dart';

import '../model/qs_model.dart';

class QsDataLayer {
  final box = GetStorage();
  final List<QsModel> qsList = [];
  QsDataLayer() {
    if (!box.hasData('qsList')) {
      print('no data');
      saveData();
    }
    loadData();
  }

  loadData() {
    if (box.hasData('qsList')) {
      for (var element in box.read('qsList')) {
        qsList.add(QsModel.fromJson(element));
      }
    }
  }

  saveData() {
    box.write('qsList', List.from(dataQ).cast<dynamic>());
  }
}
