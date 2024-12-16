import 'package:flutter/cupertino.dart';
import 'package:hw_7/user_dependency.dart';
import 'package:hw_7/user_state.dart';

class UserValueNotifier extends ValueNotifier<UserState> {
  UserValueNotifier({
    required int id,
    required this.dependency,
  }) : super(UserStateLoading(id: id));

  final UserDependency dependency;

  Future<void> load() async {
    if (value is UserStateLoaded) {
      return;
    }

    final userId = value.id;
    final user = await dependency.getUser(userId);

    if (user == null) {
      value = UserStateError(id: userId);
      return;
    }

    value = UserStateLoaded(
      id: user.id,
      firstName: user.firstName,
      lastName: user.lastName,
      email: user.email,
      avatar: user.avatar,
    );
  }
}
