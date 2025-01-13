import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_final_project/Model/songModel.dart';
import 'package:spotify_final_project/home_Page/bottomnavigationbar.dart';
import 'package:spotify_final_project/provider/favoriteClass.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  YoutubePlayerController? _controller;
  bool isPlayerReady = false;
  String? currentVideoId;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  // Initialize or update the YouTube player with the new song
  void _initializePlayer(String url) {
    String? videoId = Uri.parse(url).queryParameters['v'];

    if (videoId == null || videoId == currentVideoId) {
      return; // No action if the same video is selected
    }

    currentVideoId = videoId;

    // Dispose of the existing controller if initialized
    if (_controller != null) {
      _controller!.dispose();
    }

    // Create a new controller for the selected video
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
    )..addListener(() {
        if (_controller!.value.hasError) {
          print("Error: ${_controller!.value.errorCode}");
        }
      });

    setState(() {
      isPlayerReady = true; // Player is ready for the new video
    });
  }

  @override
  Widget build(BuildContext context) {
    final favoriteSongs = Provider.of<FavoriteProvider>(context).favoriteSongs;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.white),
        title:
            const Text('Favorite Songs', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isPlayerReady && _controller != null)
              YoutubePlayer(
                key: ValueKey(currentVideoId),
                controller: _controller!,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.white,
                onReady: () {
                  print("Player Ready");
                },
              ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Your Favorite Songs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildFavoriteSongList(favoriteSongs),
          ],
        ),
      ),
      bottomNavigationBar: Bottomnavigationbar(),
    );
  }

  Widget _buildFavoriteSongList(List<YouTubeSong> songs) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: songs.length,
      itemBuilder: (context, index) {
        final song = songs[index];
        return GestureDetector(
          onTap: () {
            _initializePlayer(song.youtubeUrl);
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10.0),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://img.youtube.com/vi/${Uri.parse(song.youtubeUrl).queryParameters['v']}/0.jpg',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                song.title,
                style: const TextStyle(color: Colors.white, fontSize: 16),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                song.artist,
                style: TextStyle(color: Colors.grey[400], fontSize: 14),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                onPressed: () {
                  // Remove song from favorites if already added
                  Provider.of<FavoriteProvider>(context, listen: false)
                      .removeFavorite(song);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
