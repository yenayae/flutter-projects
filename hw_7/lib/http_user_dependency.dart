import "dart:convert";
import 'package:http/http.dart' as http;
import "package:hw_7/user_model.dart";
import "user_dependency.dart";


class HttpUserDependency implements UserDependency {

  @override
  Future<User?> getUser(int id) async {
    final url = Uri.parse('https://reqres.in/api/users/$id');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      return null;
    }

    Map<String, dynamic> userData = jsonDecode(response.body)['data'];

    return User (

      id: userData['id'],
      firstName: userData['first_name'],
      lastName: userData['last_name'],
      email: userData['email'],
      avatar: userData['avatar'],
    );



  }








}
