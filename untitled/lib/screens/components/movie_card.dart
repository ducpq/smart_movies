import 'package:flutter/material.dart';
import 'package:untitled/models/movie.dart';



class MovieCard extends StatelessWidget {

  final Movie? movie;
  final VoidCallback press;
  MovieCard({Key? key
  ,this.movie,
  required this.press}) : super(key: key);

  double radius = 30.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Image.network(
            "https://cdn.wallpapersafari.com/11/68/SXVs4K.jpg",
            height: 180,
            width: 160,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Shang Chi',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '1h, 25mins',
            style: TextStyle(color: Colors.black38, fontSize: 20),
          ),
        )
      ]),
    );
  }
}

