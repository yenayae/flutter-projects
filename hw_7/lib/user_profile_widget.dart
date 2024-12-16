import 'package:flutter/material.dart';
import 'package:hw_7/http_user_dependency.dart';
import 'package:hw_7/user_state.dart';
import 'package:hw_7/user_value_notifier.dart';

class UserProfileWidget extends StatefulWidget {
  final int id;

  const UserProfileWidget({super.key, required this.id});

  @override
  _UserProfileWidgetState createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  static const IconData download = IconData(0xe201, fontFamily: 'MaterialIcons');

  String status = "Press button to load";

  late UserValueNotifier _userNotifier;


  @override
  void initState() {
    super.initState();
    _userNotifier =
        UserValueNotifier(id: widget.id, dependency: HttpUserDependency());
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<UserState>(
      valueListenable: _userNotifier,
      builder: (context, state, child) {
        if (state is UserStateLoading) {
          return _buildLoadingState();
        } else if (state is UserStateError) {
          status = "An error occurred.";
          return _buildLoadingState();
        } else if (state is UserStateLoaded) {
          return _buildLoadedState(state);
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildLoadingState() {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile #${widget.id}'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Text(
              status,
              style: const TextStyle(fontSize: 18.0),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => _userNotifier.load(),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(30.0),
                  backgroundColor: const Color(0xFFdac5d9),
                ),
                child: const Icon(Icons.download),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadedState(UserStateLoaded state) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile #${widget.id}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(state.avatar),
              radius: 50,
            ),
            const SizedBox(height: 16),
            Text('${state.firstName} ${state.lastName}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text(state.email, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _userNotifier.dispose();
    super.dispose();
  }
}
