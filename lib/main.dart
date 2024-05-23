
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cartelera de Películas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarteleraDePeliculas(),
    );
  }
}

class CarteleraDePeliculas extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'Inception',
      fecha: '16 Julio 2010',
      genero: 'Ciencia Ficción',
      imageUrl: 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg',
      duracion: '2h 28m',
    ),
    Movie(
      title: 'Titanic',
      fecha: '19 Diciembre 1997',
      genero: 'Romance',
      imageUrl: 'https://media.ambito.com/p/a31ac915cc00466288d39df9433b0e2a/adjuntos/239/imagenes/040/492/0040492712/titanicjpg.jpg',
      duracion: '3h 14m',
    ),
    Movie(
      title: 'The Dark Knight',
      fecha: '18 Julio 2008',
      genero: 'Acción',
      imageUrl: 'https://m.media-amazon.com/images/S/pv-target-images/e9a43e647b2ca70e75a3c0af046c4dfdcd712380889779cbdc2c57d94ab63902.jpg',
      duracion: '2h 32m',
    ),
    Movie(
      title: 'Matrix',
      fecha: '31 Marzo 1999',
      genero: 'Ciencia Ficción',
      imageUrl: 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg',
      duracion: '2h 16m',
    ),
    Movie(
      title: 'Lluvia de hamburguesa',
      fecha: '1 Octubre 2009',
      genero: 'Drama',
      imageUrl: 'https://m.media-amazon.com/images/S/pv-target-images/16a09475722049babad4288d0caf1e626ef70b39c3c510b7b857c276d818101e.jpg',
      duracion: '1h 30m',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartelera de Películas'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return MovieCard(movie: movies[index]);
        },
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(movie.imageUrl),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text('Fecha: ${movie.fecha}'),
                SizedBox(height: 5),
                Text('Género: ${movie.genero}'),
                SizedBox(height: 5),
                Text('Duracion: ${movie.duracion}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Movie {
  final String title;
  final String fecha;
  final String genero;
  final String imageUrl;
  final String duracion;

  Movie({
    required this.title,
    required this.fecha,
    required this.genero,
    required this.imageUrl,
    required this.duracion,
  });
}

