import "user_model.dart";

abstract class UserDependency {
  Future<User?> getUser(int id);
}