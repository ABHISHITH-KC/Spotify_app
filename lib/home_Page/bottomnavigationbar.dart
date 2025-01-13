import 'package:flutter/material.dart';
import 'package:spotify_final_project/home_Page/fav.dart';
import 'package:spotify_final_project/home_Page/home_Page.dart';
import 'package:spotify_final_project/home_Page/profiel.dart';
import 'package:spotify_final_project/provider/favoriteSong.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({super.key});

  @override
  State<Bottomnavigationbar> createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 40, 36, 36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpotifyHomePage()),
              );
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SpotifyHomePage()),
              );
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritePage(),
                ),
              );
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                Text(
                  "Favorites",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Profiel()), // Update if you want to redirect to a Profile page.
              );
            },
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Search {
  const Search();
}
