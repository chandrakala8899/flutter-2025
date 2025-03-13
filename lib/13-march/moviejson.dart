 
import 'package:flutter/material.dart';
import 'package:flutterdemo/13-march/moviemodel.dart';

List<MovieModel> getData() {
  List<MovieModel> movieList = [];

  jsonData.forEach((element) {
       movieList.add(MovieModel.fromJson(element));
  });

  return movieList;
}


 
 
 var jsonData = [
  {
    "id": 1,
    "title": "Inception",
    "year": 2010,
    "genre": ["Sci-Fi", "Thriller"],
    "language": "English",
    "duration": "2h 28m",
    "poster": "https://img.youtube.com/vi/STAEe52jgJU/0.jpg",
    "description": "A thief who enters the dreams of others to steal secrets gets a chance to have his past erased if he can successfully plant an idea in someone's mind.",
    "cast": [
      "Leonardo DiCaprio",
      "Joseph Gordon-Levitt",
      "Elliot Page",
      "Tom Hardy"
    ],
    "director": "Christopher Nolan",
    "release_date": "2010-07-16",
    "rating": 8.8,
    "box_office": "836.8M"
  },
  {
    "id": 2,
    "title": "Interstellar",
    "year": 2014,
    "genre": ["Sci-Fi", "Drama"],
    "language": "English",
    "duration": "2h 49m",
    "poster": "https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
    "description": "A group of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
    "cast": [
      "Matthew McConaughey",
      "Anne Hathaway",
      "Jessica Chastain",
      "Michael Caine"
    ],
    "director": "Christopher Nolan",
    "release_date": "2014-11-07",
    "rating": 8.6,
    "box_office": "677.5M"
  },
  {
    "id": 3,
    "title": "The Dark Knight",
    "year": 2008,
    "genre": ["Action", "Crime", "Drama"],
    "language": "English",
    "duration": "2h 32m",
    "poster": "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    "description": "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc on Gotham, forcing Batman closer to crossing the line between hero and vigilante.",
    "cast": [
      "Christian Bale",
      "Heath Ledger",
      "Aaron Eckhart",
      "Morgan Freeman"
    ],
    "director": "Christopher Nolan",
    "release_date": "2008-07-18",
    "rating": 9.0,
    "box_office": "1.005B"
  },
  {
    "id": 4,
    "title": "The Matrix",
    "year": 1999,
    "genre": ["Sci-Fi", "Action"],
    "language": "English",
    "duration": "2h 16m",
    "poster": "https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg",
    "description": "A hacker learns the shocking truth about reality and joins a rebellion against its controllers.",
    "cast": [
      "Keanu Reeves",
      "Laurence Fishburne",
      "Carrie-Anne Moss",
      "Hugo Weaving"
    ],
    "director": "Lana Wachowski, Lilly Wachowski",
    "release_date": "1999-03-31",
    "rating": 8.7,
    "box_office": "463.5M"
  },
  {
    "id": 5,
    "title": "Avengers: Endgame",
    "year": 2019,
    "genre": ["Action", "Sci-Fi"],
    "language": "English",
    "duration": "3h 1m",
    "poster": "https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg",
    "description": "After the devastating events of Infinity War, the remaining Avengers assemble once more in a final battle against Thanos.",
    "cast": [
      "Robert Downey Jr.",
      "Chris Evans",
      "Scarlett Johansson",
      "Chris Hemsworth"
    ],
    "director": "Anthony Russo, Joe Russo",
    "release_date": "2019-04-26",
    "rating": 8.4,
    "box_office": "2.798B"
  },
  {
    "id": 6,
    "title": "Parasite",
    "year": 2019,
    "genre": ["Thriller", "Drama"],
    "language": "Korean",
    "duration": "2h 12m",
    "poster": "https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
    "description": "A poor family schemes their way into working for a wealthy family, but their deception leads to unexpected consequences.",
    "cast": ["Song Kang-ho", "Lee Sun-kyun", "Cho Yeo-jeong", "Choi Woo-shik"],
    "director": "Bong Joon-ho",
    "release_date": "2019-05-30",
    "rating": 8.6,
    "box_office": "263.1M"
  },
  {
    "id": 7,
    "title": "The Godfather",
    "year": 1972,
    "genre": ["Crime", "Drama"],
    "language": "English",
    "duration": "2h 55m",
    "poster": "https://img.youtube.com/vi/STAEe52jgJU/0.jpg",
    "cast": ["Marlon Brando", "Al Pacino", "James Caan", "Robert Duvall"],
    "director": "Francis Ford Coppola",
    "release_date": "1972-03-24",
    "rating": 9.2,
    "box_office": "250.3M"
  }
];

