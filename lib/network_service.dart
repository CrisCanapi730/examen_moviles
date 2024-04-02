import 'package:dio/dio.dart';

class NetworkService {
  final Dio _dio = Dio();

  Future<List<dynamic>> fetchPosts() async {
    try {
      final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }
}
