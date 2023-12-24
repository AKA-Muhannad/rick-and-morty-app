import 'package:rick_and_morty_app/constants/strings.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/data/models/characters_model.dart';

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
  List<dynamic> characters = [];
  Future<List<dynamic>> getAllCharacters() async {
    try {
      // the dircetion of the end point
      Response response = await dio.get('character');
      //
      print('The response 👉 ${response.data.toString()}');

      if (response.statusCode == 200) {
        List<dynamic> results = response.data['results'];
        characters = results
            .map((characterJson) => Character.fromJson(characterJson))
            .toList();
      } else {
        print('Response code 👉 ${response.statusCode}');
      }
      // return response.data;
    } catch (e) {
      print('Error in fetching the characters 👉 ${e.toString()}');
      // return [];
    }
    return characters;
  }
}
