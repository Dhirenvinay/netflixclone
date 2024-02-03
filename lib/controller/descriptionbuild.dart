import 'package:flutter/material.dart';

class DesBuild extends StatelessWidget {
  DesBuild({super.key, required this.movie});
  final movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.network(movie["image"]["original"]),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              movie["name"],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              softWrap: true,
              maxLines: 10,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              movie["summary"],
              style: TextStyle(color: Colors.white),
              softWrap: true,
              maxLines: 20,
            ),
          ),
        ],
      ),
    );
    //  Scaffold(
    //   body: Column(
    //     children: [
    // Center(child: Text("Hello world"));
    //),
    //  );
  }
}
