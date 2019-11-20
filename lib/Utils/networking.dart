import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  final String url;

  NetworkHelper({this.url});

  Future getData() async {
    http.Response response = await http.get(
        url);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      print('status ok ${response.statusCode}');
      return jsonData;
    } else {
      print('connection error:${response.statusCode}');
      print(url);
    }

  }
}