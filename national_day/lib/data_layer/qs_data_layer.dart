import 'package:get_storage/get_storage.dart';
import 'package:national_day/dataQ/data_q.dart';

import '../model/qs_model.dart';

class QsDataLayer {
  final box = GetStorage();
  final List<QsModel> qsList = [];
  QsDataLayer() {
    loadData();
    print('QsDataLayer: ${qsList.length}');
  }
  test() {
    return box.read('qsList');
  }

  loadData() {
    print('qsList: ${qsList.length}');
    if (box.hasData('qsList')) {
      print('---------here--------');
      for (var element in box.read('qsList')) {
        qsList.add(QsModel.fromJson(element));
      }
      print('qsList: ${qsList.length}');
    }
  }

  saveData() {
    print('qsList: ${qsList.length}');
    box.write('qsList', List.from(dataQ).cast<dynamic>());
  }
}
