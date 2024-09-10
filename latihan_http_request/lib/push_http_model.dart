import 'dart:convert';

import 'package:http/http.dart' as http;

class PostResult1 {
  String? id;
  String? name;
  String? job;
  String? created;

  PostResult1({this.id, this.name, this.job, this.created});

  factory PostResult1.createdPostResult(Map<String, dynamic> object) {
    return PostResult1(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  static Future<PostResult1> connectToAPI(String name, String job) async {
    String apiURL = 'https://reqres.in/api/users';

    var apiResult =
        await http.post(Uri.parse(apiURL), body: {"name": name, "job": job});

    // var jsonObject = json.decode(apiResult.body);
    // return PostResult1.createdPostResult(jsonObject);

    if (apiResult.statusCode == 201) {
      var jsonObject = json.decode(apiResult.body);
      return PostResult1.createdPostResult(jsonObject);
    } else {
      throw Exception('Gagal');
    }
  }
}
