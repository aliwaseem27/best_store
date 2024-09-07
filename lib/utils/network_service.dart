import 'dart:convert';
import 'package:best_store/utils/endpoints.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  final String baseUrl;

  NetworkService({required this.baseUrl});

  Future<http.Response> getRequest(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    final url = Uri.parse('$baseUrl$endpoint').replace(queryParameters: queryParameters);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<http.Response> postRequest(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return response;
    } else {
      throw Exception('Failed to post data');
    }
  }

  Future<http.Response> putRequest(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.put(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to update data');
    }
  }

  Future<void> deleteRequest(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.delete(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to delete data');
    }
  }

  Future<http.Response> patchRequest(String endpoint, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.patch(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to patch data');
    }
  }
}
