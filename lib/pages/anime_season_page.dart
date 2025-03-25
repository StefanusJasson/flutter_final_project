import 'package:flutter/material.dart';
import 'package:flutter_final_project/components/anime_card.dart';
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
  List<AnimeSeason> animeSeasonList = [
    AnimeSeason(
      id: 58514,
      title: 'Kusuriya no Hitorigoto 2nd Season',
      titleEnglish: 'The Apothecary Diaries Season 2',
      type: 'TV',
      source: 'Light novel',
      episodeCount: 24,
      rank: 34,
      season: 'winter',
      year: 2025,
      image: 'https://cdn.myanimelist.net/images/anime/1025/147458l.jpg',
      synopsis: "Using her wit and vast knowledge of medicines and poisons alike, Maomao played a pivotal role in solving a series of mysteries and conspiracies that plagued the imperial court. Having recently come to terms with the secrets of her parents, she returns to fulfill her normal duties on behalf of the emperor's highest-ranking consorts. Maomao also works alongside the eunuch Jinshi to better the consorts' many ladies-in-waiting, including helping them learn to read.\n\nHowever, with the arrival of a merchant caravan comes a new wave of intrigue. A pattern of strange coincidences involving the visitors and their wares unsettles Maomao, driving her to investigate the puzzling circumstances behind the convoy. As dangers from both outside and within threaten the balance between the imperial concubines, Maomao continues to utilize her cunning and medical expertise to keep the women safe from harm.\n\n[Written by MAL Rewrite]"
    ),
    AnimeSeason(
      id: 59135,
      title: 'Class no Daikirai na Joshi to Kekkon suru Koto ni Natta.',
      titleEnglish: 'I\'m Getting Married to a Girl I Hate in My Class',
      type: 'TV',
      source: 'Light novel',
      episodeCount: 12,
      rank: 4794,
      season: 'winter',
      year: 2025,
      image: 'https://cdn.myanimelist.net/images/anime/1775/147330l.jpg',
      synopsis: "There is only one person that high school student Saito Houjou truly cannot stand—and that is his temperamental classmate, Akane Sakuramori. The two have always been on bad terms; their contrasting views and personalities only lead to endless fighting. However, everything changes when Saito's grandfather and Akane's grandmother arrange a sudden meeting and insist that the two get married!\n\nWalking down the aisle is the last thing Saito and Akane want, but they are quickly coerced into accepting the ridiculous plan and soon move into a shared house as husband and wife. Although Saito and Akane despise each other, navigating life together under the same roof may just turn their bitter hatred into everlasting love.\n\n[Written by MAL Rewrite]"
    ),
    AnimeSeason(
      id: 58271,
      title: 'Honey Lemon Soda',
      titleEnglish: 'Honey Lemon Soda',
      type: 'TV',
      source: 'Manga',
      episodeCount: 12,
      rank: 5261,
      season: 'winter',
      year: 2025,
      image: 'https://cdn.myanimelist.net/images/anime/1382/144602l.jpg',
      synopsis: "First-year high school student Uka Ishimori wants a fresh start. In middle school, Uka was given the nickname \"Rocky\" by her peers, being misunderstood as having no emotions when she was actually shy and introverted. As a result, Uka was relentlessly bullied and experienced a lonely, isolated school life. Now, Uka is determined to change.\n\nDuring the first week of school, Uka accidentally gets drenched in lemon soda by her classmate Kai Miura—whose cool personality is the complete opposite of hers. After the incident, Uka is surprised when Kai performs small acts of kindness for her, encouraging her to gradually break out of her shell. Like a lemon soda, bubbly and exciting feelings are beginning to stir.\n\n[Written by MAL Rewrite]"
    )
  ];

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