import 'package:flutter/material.dart';
import 'package:flutterdemo/13-march/moviedetails.dart';
import 'package:flutterdemo/13-march/moviejson.dart';
import 'package:get/get.dart';
import 'moviemodel.dart'; // Import the MovieModel file

class MovieListScreen extends StatelessWidget {
  final List<MovieModel> movies = getData();

  // @override
  // void initState() {
  //  getData();
  //   initState();
  // }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Center(child: Text("BookMyShow",style: TextStyle(color: Colors.red),)),
        actions: [
          IconButton( icon: Icon(Icons.search,color: Colors.white,),onPressed: () {})
        ],
        backgroundColor: Colors. lightBlue,
        
      ),
    
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return buildMovieCard(movies[index]);
        },
      ),
    );
  }

  Widget buildMovieCard(MovieModel movie) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: ListTile(
        leading: Image.network(
          movie.poster!,
          width: 50,
          height: 75,
          fit: BoxFit.cover,
        ),
        title: Text(movie.title !, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Release Date: ${movie.releaseDate}\nRating: ${movie.rating}⭐"),
        trailing: Icon(Icons.arrow_forward),
       onTap: () {


  Get.to(() => MovieDetailScreen(movie: movie));
},
      ),
    );
  }
}
