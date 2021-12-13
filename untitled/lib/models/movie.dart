import 'package:untitled/models/genre.dart';

class Movie {
  String src;
  String description;
  String time;
  String name;
  int rating;
  List<Genre> genres;

  Movie(this.src, this.description, this.time, this.name, this.rating,
      this.genres);
}
