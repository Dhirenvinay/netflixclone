import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  List<dynamic> movieData = [].obs;
  Future<void> fetchMovie() async {
    Uri url = Uri.parse("https://api.tvmaze.com/search/shows?q=all");

    final response = await http.get(url);
    if (response.statusCode == 200) {
      print("getting response ${response.body}");
      movieData = jsonDecode(response.body);
      print("the list is ${movieData}");
    } else {
      print("error ${response.statusCode}");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchMovie();
  }
}
