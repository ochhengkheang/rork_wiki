import 'dart:convert';
import 'package:http/http.dart' as http;

class RorkWikiHttpHelper {
  static String _baseUrl = 'https://jsonplaceholder.typicode.com';

  // GET
  static Future<Map<String, dynamic>> get(String endpoint) async {
    var response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // POST
  static Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> data) async {
    var response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  // PUT
  static Future<Map<String, dynamic>> put(
      String endpoint, Map<String, dynamic> data) async {
    var response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );
    return _handleResponse(response);
  }

  // DELETE
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    var response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else if (response.statusCode == 500) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
