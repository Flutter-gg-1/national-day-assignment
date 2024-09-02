import 'package:objectbox/objectbox.dart';

@Entity()
class User {
   @Id()
  int id = 0;
  late int score = 0;
  late int progress = 0;
  User({required this.score, required this.progress});
}
