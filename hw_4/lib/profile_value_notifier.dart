import 'package:flutter/cupertino.dart';
import 'package:hw_4/profile.dart';

class ProfileValueNotifier extends ValueNotifier<Profile> {
  ProfileValueNotifier() : super(Profile (firstName: "", lastName: "", imageUrl: ""));


  void update({String? firstName, String? lastName, String? imageUrl}) {

    value = Profile(
      firstName: firstName ?? value.firstName,
      lastName: lastName ?? value.lastName,
      imageUrl: imageUrl ?? value.imageUrl,
    );


  }






}
