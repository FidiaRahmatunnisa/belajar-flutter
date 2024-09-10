import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String? id;
  String? name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
    );
  }

  static Future<User> connectToAPI(String id) async {
    String apiURL = "https://reqres.in/api/users/" + id;

    // apiURL harus di parsing ke URI dulu, karena yang dipakai emang URI
    var apiRes = await http.get(Uri.parse(apiURL));
    if (apiRes.statusCode != 201) {
      var jsonObject = json.decode(apiRes.body);
      var userData = (jsonObject as Map<String, dynamic>)['data'];
      return User.createUser(userData);
    } else {
      throw Exception('Gagal');
    }
  }
}
