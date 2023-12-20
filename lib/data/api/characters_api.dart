import 'package:rick_and_morty_app/constants/strings.dart';
import 'package:dio/dio.dart';

class CharactersAPIs {
  late Dio dio;

  // Constructor
  CharactersAPIs() {
    BaseOptions options = BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 30),
      receiveTimeout: Duration(seconds: 15),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      // the dircetion of the end point
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
