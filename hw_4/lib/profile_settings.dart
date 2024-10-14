import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_value_notifier.dart';
import 'profile.dart';

class ProfileSettings extends StatefulWidget {
  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final ProfileValueNotifier _profileValueNotifier = ProfileValueNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Settings'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[500],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<Profile>(
                valueListenable: _profileValueNotifier,
                builder: (context, value, _) {
                  Widget imageWidget = Container();

                  if (value.imageUrl.isNotEmpty) {
                    imageWidget = SizedBox(
                      width: 100,
                        height: 100,
                      child: Image.network(
                        value.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    );
                  }

                  return imageWidget;

                },
              ),
              Row(
                children: [
                  const Icon(Icons.text_fields),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                      ),
                      onChanged: (value) {
                        _profileValueNotifier.update(firstName: value);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.text_fields),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                      ),
                      onChanged: (value) {
                        _profileValueNotifier.update(lastName: value);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Icon(Icons.image),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Image URL',
                      ),
                      onChanged: (value) {
                        _profileValueNotifier.update(imageUrl: value);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ValueListenableBuilder<Profile>(
                  valueListenable: _profileValueNotifier,
                  builder: (context, value, _) {
                    String fullName = "You do not have a full name!";
                    if (value.firstName.isNotEmpty &&
                        value.lastName.isNotEmpty) {
                      fullName = "${value.firstName} ${value.lastName}";
                    }
                    return Text(fullName);
                  })
            ],
          ),
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
