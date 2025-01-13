import 'package:flutter/material.dart';
import 'package:spotify_final_project/Model/songModel.dart';

class FavoriteProvider with ChangeNotifier {
  // List to hold the favorite songs
  List<YouTubeSong> _favoriteSongs = [];

  // Get the favorite songs
  List<YouTubeSong> get favoriteSongs => _favoriteSongs;

  // Add or remove a song from the favorites list
  void toggleFavorite(YouTubeSong song) {
    if (_favoriteSongs.contains(song)) {
      _favoriteSongs.remove(song); // Remove from favorites
    } else {
      _favoriteSongs.add(song); // Add to favorites
    }
  }

  void removeFavorite(YouTubeSong song) {
    _favoriteSongs.remove(song);
    notifyListeners();
    notifyListeners();
  }

  void addFavorite(YouTubeSong song) {
    if (!_favoriteSongs.contains(song)) {
      _favoriteSongs.add(song);
      notifyListeners();
    }
  }
}
