class MovieModel {
  int? id;
  String? title;
  int? year;
  List<String>? genre;
  String? language;
  String? duration;
  String? poster;
  String? description;
  List<String>? cast;
  String? director;
  String? releaseDate;
  double? rating;
  String? boxOffice;

  MovieModel(
      {this.id,
      this.title,
      this.year,
      this.genre,
      this.language,
      this.duration,
      this.poster,
      this.description,
      this.cast,
      this.director,
      this.releaseDate,
      this.rating,
      this.boxOffice});

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    year = json['year'];
    genre = json['genre'].cast<String>();
    language = json['language'];
    duration = json['duration'];
    poster = json['poster'];
    description = json['description'];
    cast = json['cast'].cast<String>();
    director = json['director'];
    releaseDate = json['release_date'];
    rating = json['rating'];
    boxOffice = json['box_office'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['year'] = this.year;
    data['genre'] = this.genre;
    data['language'] = this.language;
    data['duration'] = this.duration;
    data['poster'] = this.poster;
    data['description'] = this.description;
    data['cast'] = this.cast;
    data['director'] = this.director;
    data['release_date'] = this.releaseDate;
    data['rating'] = this.rating;
    data['box_office'] = this.boxOffice;
    return data;
  }
}

