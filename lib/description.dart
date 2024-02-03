import 'package:flutter/material.dart';
import 'package:netflixclon/controller/descriptionbuild.dart';

class DescriptionScreen extends StatelessWidget {
  DescriptionScreen({super.key, required this.movie});
  var movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff564d4d).withOpacity(0.5),
      body: DesBuild(
        movie: movie,
      ),
    );
  }
}
