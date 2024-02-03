import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:netflixclon/brandscroll.dart';
import 'package:netflixclon/controller/logincontroller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(c),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Dhiren"), Icon(Icons.search)],
          ),
          SizedBox(
            height: 15,
          ),
          Text("Popular on Netflix"),
          SizedBox(
            height: 15,
          ),
          // BrandScroll(),
          // SizedBox(
          //   child: ListView.builder(
          //     itemBuilder: (context, index) {
          //       return Column(
          //         children: [],
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
