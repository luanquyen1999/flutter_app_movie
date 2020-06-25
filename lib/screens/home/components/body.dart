import 'package:flutter/material.dart';
import 'package:flutter_app_movie_app/components/genre_card.dart';
import 'package:flutter_app_movie_app/constants.dart';
import 'package:flutter_app_movie_app/models/movie.dart';
import 'package:flutter_app_movie_app/screens/home/components/categories.dart';
import 'package:flutter_app_movie_app/screens/home/components/genres.dart';
import 'package:flutter_app_movie_app/screens/home/components/movie_card.dart';
import 'package:flutter_app_movie_app/screens/home/components/movie_carousel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math'as math;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding,),
          MovieCarousel(),
        ],
      ),
    );
  }
}
