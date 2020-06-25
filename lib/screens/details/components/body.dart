import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_movie_app/components/genre_card.dart';
import 'package:flutter_app_movie_app/constants.dart';
import 'package:flutter_app_movie_app/models/movie.dart';
import 'package:flutter_app_movie_app/screens/details/components/backdrop_rating.dart';
import 'package:flutter_app_movie_app/screens/details/components/cast_and_crew.dart';
import 'package:flutter_app_movie_app/screens/details/components/cast_card.dart';
import 'package:flutter_app_movie_app/screens/details/components/genres.dart';
import 'package:flutter_app_movie_app/screens/details/components/title_duration_and_fav_btn.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body1 extends StatelessWidget {
  final Movie movie;

  const Body1({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          BackdropAndRating(size: size, movie: movie),
        SizedBox(height: kDefaultPadding/2,),
        TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
              padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding/2,
              horizontal: kDefaultPadding,
              ),
            child: Text(
                "Plot Summay",
            style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(movie.plot,style: TextStyle(
                color: Color(0xFF737599),
            ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
