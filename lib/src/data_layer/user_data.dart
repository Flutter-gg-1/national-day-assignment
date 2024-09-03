import 'package:get_storage/get_storage.dart';

import '../models/user_model.dart';

class UserData {
  // Create an instance of GetStorage to interact with local storage.
  final box = GetStorage();

  // Method to retrieve user data from local storage.
  UserModel getUserData() {
    
    // Read the user data from storage using the key 'userData'.
    var userData = box.read('userData');

    // If userData exists, convert it from JSON to a UserModel object.
    if (userData != null) {
      return UserModel.fromJson(userData);
    }

    // If no user data is found, return a default UserModel.
    return UserModel(); // Default user
  }

  // Method to save user data to local storage.
  void saveUserData(UserModel user) {
    // Convert the UserModel object to JSON and save it to local storage with the key 'userData'.
    box.write('userData', user.toJson());
  }
}
