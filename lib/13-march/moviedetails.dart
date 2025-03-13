import 'package:flutter/material.dart';

import 'moviemodel.dart';

class MovieDetailScreen extends StatelessWidget {
  final MovieModel movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(movie.title ?? "Movie Details"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(width: 2)),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image.network(movie.poster!),
              Text("Title: ${movie.title}",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text("Rating: ${movie.rating}", style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text("Genre: ${movie.genre?.join(", ")}",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text("Director: ${movie.director}",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text("Release Date: ${movie.releaseDate}",
                  style: TextStyle(fontSize: 16)),
              SizedBox(height: 10),
              Text("Description: ${movie.description}",
                  style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
