class Model {
  String? movieName;
  String? releaseDate;
  String? description;
   double? rating;

   Model({required this.rating,required this.description,required this.movieName,required this.releaseDate
});


Model.fromJson(Map<String,dynamic> json) {
  movieName= json['movieName'];
  releaseDate=json['releaseDate'];
  description=json['description'];
  rating=json['rating'];
}

}
  

