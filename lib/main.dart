import 'package:flutter/material.dart';
import 'package:movie_search_app/screen.dart';
import 'package:provider/provider.dart';
import 'provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Search App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const MovieSearchScreen(),
      routes: {
        '/details': (context) => const MovieDetailScreen(),
      },
    );
  }
}