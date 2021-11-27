import 'package:http/http.dart' as http;

import 'package:jupol_prueba/app/data/model/post_model.dart';
import 'package:jupol_prueba/app/util/const.dart';


class PostProvider {
  static var client = http.Client();

  static Future<List<PostModel>?> fetchPost() async {
    var response = await client.get(Uri.parse('$restAPI/posts'));

    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      print(jsonResponse);
      return postFromJson(jsonResponse);
    } else {
      return null;
    }
  }
}
