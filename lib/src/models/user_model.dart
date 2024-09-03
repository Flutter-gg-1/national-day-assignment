class UserModel {
  int currentLevel;
  UserModel({this.currentLevel = 0});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(currentLevel: json['currentLevel']);
  }
  Map<String, dynamic> toJson() {
    return {'currentLevel': currentLevel};
    
  }
}
