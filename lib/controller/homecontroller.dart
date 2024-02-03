import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<dynamic> movieData = [].obs;
  void getMovieData() async {
    final response =
        await Dio().get("https://api.tvmaze.com/search/shows?q=all");
    if (response.statusCode == 200) {
      print("getting Status");
      movieData.value = await response.data;
      print("movie List ${movieData}");
    } else {
      print("error ${response.statusCode}");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getMovieData();
  }

  // @override
  // void onReady() {
  //   // TODO: implement onReady
  //   super.onReady();
  //   getMovieData();
  // }
}
