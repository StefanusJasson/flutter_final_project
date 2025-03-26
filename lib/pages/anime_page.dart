import 'package:flutter/material.dart';
import 'package:flutter_final_project/extensions/string_extension.dart';
import 'package:flutter_final_project/models/anime_season_model.dart';

class AnimePage extends StatefulWidget {
  const AnimePage({super.key, required this.animeSeason});

  final AnimeSeason animeSeason;
  
  @override
  State<AnimePage> createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> {
  @override
  Widget build(BuildContext context) {
  AnimeSeason animeSeason = widget.animeSeason;
    return Scaffold(
      appBar: AppBar(
        title: Text(animeSeason.title as String),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text(
            animeSeason.title as String, 
            style: TextStyle(fontSize: 20), 
            textAlign: TextAlign.center,
          ),
          Text(
            animeSeason.titleEnglish == null? '': animeSeason.titleEnglish as String, 
            textAlign: TextAlign.center,
          ),
          Image.network(
            animeSeason.image as String,
            fit: BoxFit.fill,
          ),
          Container(height: 10,),
          Column(
            children: [
              Text(
                'Information',
                style: TextStyle(fontSize: 18),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 180,
                    child: ListTile(
                      title: Text(animeSeason.source as String),
                      subtitle: Text('Source'),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 180,
                    child: ListTile(
                      title: Text('${animeSeason.episodeCount}'),
                      subtitle: Text('Episodes'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 180,
                    child: ListTile(
                      title: Text(animeSeason.type as String),
                      subtitle: Text('Type'),
                    ),  
                  ),
                  SizedBox(
                    height: 100,
                    width: 180,
                    child: ListTile(
                      title: Text('${(animeSeason.season)?.capitalize()} ${animeSeason.year}'),
                      subtitle: Text('Season'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Synopsis',
                style: TextStyle(fontSize: 18),
              ),
              Divider(),
              Text(animeSeason.synopsis as String),
            ],
          ),
          Column(
            children: [
              Text(
                'Characters',
                style: TextStyle(fontSize: 18),
              ),
              Divider(),
              SizedBox(
                height: 460,
                child: ListView.builder(
                  itemCount: animeSeason.characters == null? 0:animeSeason.characters?.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) => Row(
                    children: [
                      Column(
                        children: [
                          Image.network(
                            animeSeason.characters?[index]['image'],
                            height: 200,
                          ),
                          Text(animeSeason.characters?[index]['name']),
                          Image.network(
                            animeSeason.characters?[index]['seiyuu_image'],
                            height: 200,
                          ),
                          Text(animeSeason.characters?[index]['seiyuu']),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}