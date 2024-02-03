import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:netflixclon/controller/homecontroller.dart';
import 'package:netflixclon/description.dart';

class NewBuild extends StatelessWidget {
  NewBuild({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: 10,
          ),
          scrollDirection: Axis.vertical,
          itemCount: controller.movieData.length,
          itemBuilder: (BuildContext context, int index) {
            final movie = controller.movieData[index]["show"];

            return movie["image"] != null
                ? InkWell(
                    onTap: () {
                      Get.to(() => DescriptionScreen(
                            movie: movie,
                          ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    movie["premiered"].split("-")[2],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Dec",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          16, // Adjust the font size as needed
                                    ),
                                    // textDirection: TextDirection.ltr,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RotatedBox(
                                    quarterTurns:
                                        -3, // Rotate the text 90 degrees counter-clockwise
                                    child: Text(
                                      movie["premiered"].split("-")[0],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            16, // Adjust the font size as needed
                                      ),
                                      // textDirection: TextDirection.ltr,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                // height: MediaQuery.sizeOf(context).height / 1.8,
                                width: MediaQuery.of(context).size.width / 1.2,
                                // color: Colors.white,
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(15),
                                //   image: DecorationImage(
                                //     image:
                                //         NetworkImage(movie["image"]["original"],),
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Image.network
                                    Image.network(
                                      movie["image"]["original"],
                                      height: 270,
                                      width: double.infinity,
                                      fit: BoxFit.fill,
                                      // MediaQuery.sizeOf(context).width / 1.3,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      movie["name"],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      softWrap: true,
                                      maxLines: 3,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    HtmlWidget(movie["summary"],
                                        textStyle:
                                            TextStyle(color: Colors.white)),

                                    // Text(
                                    //   movie["summary"],
                                    //   style: TextStyle(color: Colors.white),
                                    //   softWrap: true,
                                    //   maxLines: 3,
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: 50,
                          //   width: MediaQuery.of(context).size.width,
                          //   child: Text(
                          //     movie["summary"],
                          //     style: TextStyle(color: Colors.white),
                          //     softWrap: true,
                          //     maxLines: 2,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                : SizedBox();
          },
        ),
      );
    });
  }
}
