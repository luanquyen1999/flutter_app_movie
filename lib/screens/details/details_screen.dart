import 'package:flutter/material.dart';
import 'package:flutter_app_movie_app/models/movie.dart';
import 'package:flutter_app_movie_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body1(movie: movie,),
    );
  }
}
