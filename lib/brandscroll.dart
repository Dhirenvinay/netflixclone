import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflixclon/controller/homecontroller.dart';

import 'controller/logincontroller.dart';

class BrandScroll extends StatelessWidget {
  BrandScroll({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SizedBox(
        height: 140,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.movieData.length,
          itemBuilder: (BuildContext context, int index) {
            final movie = controller.movieData[index]["show"];
            print("the lenght is ${controller.movieData.length}");
            print("the show is ${movie}");
            return Column(
              children: [
                movie["image"] != null
                    ? Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width / 4,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(movie["image"]["medium"]),
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
