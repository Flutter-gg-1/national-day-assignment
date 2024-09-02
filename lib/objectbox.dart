import 'package:get_it/get_it.dart';
import 'package:national_day/data_layer/data_layer.dart';
import 'package:national_day/json/data.dart';
import 'package:national_day/model/question_model.dart';
import 'package:national_day/model/user.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'objectbox.g.dart';

class ObjectBox {
  late final Store store;

  late final Box<User> userBox;
  late final Box<QuestionModel> qBox;

  ObjectBox._create(this.store) {
    userBox = Box(store);
    qBox = Box(store);
    if (userBox.isEmpty()) {
      createUserData();
    }
    if (qBox.isEmpty()) {
      createQuestionData();
    }
  }

  static Future<ObjectBox> create() async {
     

    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(docsDir.path, "myapp"));
    return ObjectBox._create(store);
  }

  void createQuestionData() {
    dataQ
        .map((e) =>
            GetIt.I.get<Datalayer>().questions.add(QuestionModel.fromJson(e)))
        .toList();
    qBox.putManyAsync(GetIt.I.get<Datalayer>().questions);
  }

  void createUserData() {
    userBox.put(GetIt.I.get<Datalayer>().user);
  }

  
}
