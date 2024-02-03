import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflixclon/controller/homecontroller.dart';

import 'controller/logincontroller.dart';

class BrandScroll2 extends StatelessWidget {
  BrandScroll2({super.key});
  HomeController controller = Get.put(HomeController());

  // LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.movieData.length,
          itemBuilder: (BuildContext context, int index) {
            final movie = controller.movieData[index]["show"];
            // print("the lenght is ${controller.movieData.length}");
            // print("the show is ${movie}");

            return Column(
              children: [
                movie["image"] != null
                    ? Container(
                        height: 350,
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(movie["image"]["original"]),
                                // "https://static.tvmaze.com/uploads/images/medium_portrait/413/1034988.jpg"),
                                fit: BoxFit.cover)),

                        // child:
                        //           Image.asset('assets/images/phonepe.png'),
                      )
                    : SizedBox(),
                // Text("Zomato")
              ],
            );
          },
        ),
      );
    });
  }
}
