part of 'models.dart';

class Movie extends Equatable {
  final int id;
  final String title, overview, posterPath, backdropPath;
  final double voteAverage;

  Movie(
      {@required this.id,
      @required this.title,
      @required this.overview,
      @required this.posterPath,
      @required this.backdropPath,
      @required this.voteAverage});

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
      id: json['id'],
      title: json['title'],
      voteAverage: (json['vote_average'] as num).toDouble(),
      overview: json['overview'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path']);

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, title, voteAverage, overview, posterPath, backdropPath];
}
