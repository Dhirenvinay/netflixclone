import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflixclon/brandscroll.dart';
import 'package:netflixclon/brandscroll2.dart';
import 'package:netflixclon/controller/homecontroller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
          ),
          Center(
            child: Card(
              elevation: 10.0,
              color: Colors.transparent,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(
                        10.0)), // Customize the radius as needed
                    child: Image.network(
                      "https://static.tvmaze.com/uploads/images/medium_portrait/413/1034988.jpg",
                      height: MediaQuery.sizeOf(context).height / 1.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 100,
                      width: 60,
                      color: Colors.black.withOpacity(0.3),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Suspense full",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Suspense full",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Text("Suspense full",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50,
                                  // padding: EdgeInsets.only(left: 25, right: 20),
                                  // width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.play_arrow,
                                        size: 35,
                                      ),
                                      Text(
                                        "Play",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Container(
                                  height: 50,

                                  // padding: EdgeInsets.only(left: 25, right: 20),
                                  // width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      Text(
                                        "MyList",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Poplular on Netflix",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          BrandScroll(),
          Text(
            "Trending Now",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          BrandScroll(),
          Text(
            "Only on Netflix",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          BrandScroll2()
          // BrandScroll()
          // SizedBox(
          //   child: ListView.builder(
          //     itemCount: 2,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       return SizedBox(
          //         child: Image.network(
          //           "https://static.tvmaze.com/uploads/images/medium_portrait/413/1034988.jpg",
          //           height: 100,
          //           // width: 60,
          //         ),
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
    // );
  }
}
