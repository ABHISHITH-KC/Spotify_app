import 'package:flutter/material.dart';
import 'package:spotify_final_project/Login_Page/Home.dart';
import 'package:spotify_final_project/Login_Page/get_start.dart';
import 'package:spotify_final_project/home_Page/ArtistDetilasApi.dart';
import 'package:spotify_final_project/home_Page/home_Page.dart';
import 'package:spotify_final_project/home_Page/profiel.dart';
import 'package:provider/provider.dart';
import 'package:spotify_final_project/provider/favoriteClass.dart';
import 'package:spotify_final_project/provider/favoriteSong.dart';


void main() {
  runApp(
      ChangeNotifierProvider(
        create: (_)=>FavoriteProvider(),
    
    child: const MainApp(),));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:SpotifyHomePage(),
      routes: {
        '/favorites': (context) => const FavoritePage(),
      },
        );
      
    
  }
}
