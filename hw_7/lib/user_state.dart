abstract class UserState {
  UserState({required this.id});
  final int id;
}

class UserStateLoading extends UserState {
  UserStateLoading({required super.id});
}

class UserStateError extends UserState {
  UserStateError({required super.id});
}

class UserStateLoaded extends UserState {
  UserStateLoaded({
    required super.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.avatar,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String avatar;
}
