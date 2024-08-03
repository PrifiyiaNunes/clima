import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  final String url;

  NetworkHelper({required this.url});

  Future<Map<String, dynamic>> getData() async {
    var url = Uri.parse(this.url);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return convert.jsonDecode(response.body) as Map<String, dynamic>;
    }else {
      return response.body as Map<String, dynamic>;
    }
  }
}