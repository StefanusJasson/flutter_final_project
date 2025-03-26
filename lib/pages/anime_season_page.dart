import 'package:flutter/material.dart';
import 'package:flutter_final_project/components/anime_card.dart';
import 'package:flutter_final_project/const/anime_season_list.dart';
import 'package:flutter_final_project/extensions/context_extension.dart';
import 'package:flutter_final_project/models/anime_season_model.dart';
import 'package:flutter_final_project/pages/anime_page.dart';
import 'package:flutter_final_project/pages/setting_page.dart';

class AnimeSeasonPage extends StatefulWidget {
  const AnimeSeasonPage({super.key});

  @override
  State<AnimeSeasonPage> createState() => _AnimeSeasonPageState();
}

class _AnimeSeasonPageState extends State<AnimeSeasonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anime Season'),
        actions: [
          IconButton(
            onPressed: (){context.push(SettingPage());}, 
            icon: Icon(Icons.settings)
          ),
        ],
      ),

      body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 340,
            ), 
            itemCount: animeSeasonList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                context.push(AnimePage(animeSeason: animeSeasonList[index]));
              },
              child: AnimeCard(animeSeason: animeSeasonList[index])
            ),
          ),
      );
  }
}