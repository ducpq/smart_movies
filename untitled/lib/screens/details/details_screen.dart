import 'package:flutter/material.dart';
import 'package:untitled/models/movie.dart';

class DetailScreen extends StatelessWidget {
  final Movie? movie;

  const DetailScreen({Key? key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie Detail",style: TextStyle(color: Colors.black, fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: null,
        ),
        shadowColor: Colors.white,
      ),

    );
  }
}
