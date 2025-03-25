class AnimeSeason {
  final int? id;
  final String? title;
  final String? titleEnglish;
  final String? type;
  final String? source;
  final int? episodeCount;
  final int? rank;
  final String? season;
  final int? year;
  final String? image;
  final String? synopsis;

  AnimeSeason({
    this.id,
    this.title,
    this.titleEnglish,
    this.type,
    this.source,
    this.episodeCount,
    this.rank,
    this.season,
    this.year,
    this.image,
    this.synopsis,
  });

   factory AnimeSeason.fromJson(Map<String, dynamic> json) => AnimeSeason(
    id: json["id"],
    title: json["title"],
    titleEnglish: json["title_english"],
    type: json["type"],
    source: json["source"],
    episodeCount: int.tryParse(json["episodes"]),
    rank: int.tryParse(json["rank"]),
    season: json["season"],
    year: int.tryParse(json["year"]),
    image: json["images"]["jpg"]["image_url"],
  );
}