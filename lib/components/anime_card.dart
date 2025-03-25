import 'package:flutter/material.dart';
import 'package:flutter_final_project/models/anime_season_model.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.animeSeason});

  final AnimeSeason animeSeason;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
            animeSeason.image as String, fit: BoxFit.fill,),
            Text(
              animeSeason.title as String,
              textAlign: TextAlign.center,
            ),
          ]
        )
        
      ),
    );
  }
}