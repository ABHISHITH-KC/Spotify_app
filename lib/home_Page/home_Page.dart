import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spotify_final_project/Model/songModel.dart';
import 'package:spotify_final_project/home_Page/bottomnavigationbar.dart';
import 'package:spotify_final_project/provider/favoriteClass.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:provider/provider.dart';

class SpotifyHomePage extends StatefulWidget {
  const SpotifyHomePage({super.key});

  @override
  _SpotifyHomePageState createState() => _SpotifyHomePageState();
}

class _SpotifyHomePageState extends State<SpotifyHomePage> {
  List<YouTubeSong> songs = [
    YouTubeSong(
      title: "1+1",
      artist: "Kate Hudson",
      youtubeUrl: "https://www.youtube.com/watch?v=iNuZD8N8KMQ",
    ),
    YouTubeSong(
      title: "1+1 (Banx & Ranx Remix)",
      artist: "Sia",
      youtubeUrl: "https://www.youtube.com/watch?v=oKJkIKxjK2g",
    ),
    YouTubeSong(
      title: "1+1 (Banx & Ranx Remix 2)",
      artist: "Sia (Ft. Sofía Reyes & Yandel)",
      youtubeUrl: "https://www.youtube.com/watch?v=h1TuhZ8nkgU",
    ),
    YouTubeSong(
      title: "1+1 (Remix)",
      artist: "Sia (Ft. Amir & Banx & Ranx)",
      youtubeUrl: "https://www.youtube.com/watch?v=617jUxf-yPE",
    ),
    YouTubeSong(
      title: "12 Nights",
      artist: "Sia",
      youtubeUrl: "https://www.youtube.com/watch?v=ym7_CmfTYIA",
    ),
    YouTubeSong(
      title: "2 Minutes ’Til New Years",
      artist: "Sia",
      youtubeUrl: "https://www.youtube.com/watch?v=PqhDdetmvn8",
    ),
    YouTubeSong(
      title: "Alive",
      artist: "Sia",
      youtubeUrl: "https://www.youtube.com/watch?v=t2NgsJrrAyM",
    ),
    YouTubeSong(
      title: "85 Blocks",
      artist: "Hustle Roses",
      youtubeUrl: "https://www.youtube.com/watch?v=nniZJLnt6XY",
    ),
    YouTubeSong(
      title: "Blinding Lights",
      artist: "The Weeknd",
      youtubeUrl: "https://www.youtube.com/watch?v=4NRXx6U8ABQ",
    ),
    YouTubeSong(
      title: "Levitating",
      artist: "Dua Lipa",
      youtubeUrl: "https://www.youtube.com/watch?v=TUVcZfQe-Kw",
    ),
    YouTubeSong(
      title: "Shape of You",
      artist: "Ed Sheeran",
      youtubeUrl: "https://www.youtube.com/watch?v=JGwWNGJdvx8",
    ),
    YouTubeSong(
      title: "Bad Guy",
      artist: "Billie Eilish",
      youtubeUrl: "https://www.youtube.com/watch?v=DyDfgMOUjCI",
    ),
    YouTubeSong(
      title: "Stay",
      artist: "The Kid LAROI, Justin Bieber",
      youtubeUrl: "https://www.youtube.com/watch?v=kTJczUoc26U",
    ),
    YouTubeSong(
      title: "Uptown Funk",
      artist: "Mark Ronson ft. Bruno Mars",
      youtubeUrl: "https://www.youtube.com/watch?v=OPf0YbXqDm0",
    ),
    YouTubeSong(
      title: "Happier Than Ever",
      artist: "Billie Eilish",
      youtubeUrl: "https://www.youtube.com/watch?v=5GJWxDKyk3A",
    ),
    YouTubeSong(
      title: "Drivers License",
      artist: "Olivia Rodrigo",
      youtubeUrl: "https://www.youtube.com/watch?v=ZmDBbnmKpqQ",
    ),
    YouTubeSong(
      title: "Industry Baby",
      artist: "Lil Nas X, Jack Harlow",
      youtubeUrl: "https://www.youtube.com/watch?v=UTHLKHL_whs",
    ),
    YouTubeSong(
      title: "Montero (Call Me By Your Name)",
      artist: "Lil Nas X",
      youtubeUrl: "https://www.youtube.com/watch?v=6swmTBVI83k",
    ),
    YouTubeSong(
      title: "Blinding Lights",
      artist: "The Weeknd",
      youtubeUrl: "https://www.youtube.com/watch?v=4NRXx6U8ABQ",
    ),
    YouTubeSong(
      title: "Levitating",
      artist: "Dua Lipa",
      youtubeUrl: "https://www.youtube.com/watch?v=TUVcZfQe-Kw",
    ),
    YouTubeSong(
      title: "Shape of You",
      artist: "Ed Sheeran",
      youtubeUrl: "https://www.youtube.com/watch?v=JGwWNGJdvx8",
    ),
    YouTubeSong(
      title: "Stay",
      artist: "The Kid LAROI, Justin Bieber",
      youtubeUrl: "https://www.youtube.com/watch?v=kTJczUoc26U",
    ),
    YouTubeSong(
      title: "Peaches",
      artist: "Justin Bieber",
      youtubeUrl: "https://www.youtube.com/watch?v=tQ0yjYUFKAE",
    ),
    YouTubeSong(
      title: "Watermelon Sugar",
      artist: "Harry Styles",
      youtubeUrl: "https://www.youtube.com/watch?v=E07s5ZYygMg",
    ),
    YouTubeSong(
      title: "Sunflower",
      artist: "Post Malone, Swae Lee",
      youtubeUrl: "https://www.youtube.com/watch?v=ApXoWvfEYVU",
    ),
    YouTubeSong(
      title: "Drivers License",
      artist: "Olivia Rodrigo",
      youtubeUrl: "https://www.youtube.com/watch?v=ZmDBbnmKpqQ",
    ),
    YouTubeSong(
      title: "Good 4 U",
      artist: "Olivia Rodrigo",
      youtubeUrl: "https://www.youtube.com/watch?v=gNi_6U5Pm_o",
    ),
    YouTubeSong(
      title: "Bad Habits",
      artist: "Ed Sheeran",
      youtubeUrl: "https://www.youtube.com/watch?v=orJSJGHjBLI",
    ),
  ];

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
            const Text('Good Morning', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCarouselSlider(songs),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Recently Played',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            _buildHorizontalList(songs),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Recommended For You',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            _buildRecommendedSongsList(songs, favoriteSongs),
            if (isPlayerReady && _controller != null)
              YoutubePlayer(
                key: ValueKey(currentVideoId),
                controller: _controller!,
              ),
          ],
        ),
      ),
      bottomNavigationBar: const Bottomnavigationbar(),
    );
  }

  Widget _buildCarouselSlider(List<YouTubeSong> songs) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: songs.take(15).map((song) {
        return GestureDetector(
          onTap: () {
            _initializePlayer(song.youtubeUrl);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                    'https://img.youtube.com/vi/${Uri.parse(song.youtubeUrl).queryParameters['v']}/0.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  song.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHorizontalList(List<YouTubeSong> songs) {
    return SizedBox(
      height: 120.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          return GestureDetector(
            onTap: () {
              _initializePlayer(song.youtubeUrl);
            },
            child: Container(
              width: 100,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://img.youtube.com/vi/${Uri.parse(song.youtubeUrl).queryParameters['v']}/0.jpg',
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    song.title,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Add GridView.builder for Recommended Songs
  Widget _buildRecommendedSongsList(
      List<YouTubeSong> songs, List<YouTubeSong> favoriteSongs) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        shrinkWrap: true, // Allow it to take only as much space as needed
        physics:
            NeverScrollableScrollPhysics(), // Disable scrolling since it's inside a SingleChildScrollView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.7, // Adjust the aspect ratio to suit your design
        ),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];
          final isFavorite =
              favoriteSongs.contains(song); // Check if the song is a favorite

          return GestureDetector(
            onTap: () {
              _initializePlayer(song.youtubeUrl);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey[800],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://img.youtube.com/vi/${Uri.parse(song.youtubeUrl).queryParameters['v']}/0.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Text(
                      song.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black45,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: isFavorite
                            ? Colors.red
                            : Colors
                                .white, // Change color based on favorite status
                      ),
                      onPressed: () {
                        if (isFavorite) {
                          // Remove from favorites
                          Provider.of<FavoriteProvider>(context, listen: false)
                              .removeFavorite(song);
                        } else {
                          // Add to favorites
                          Provider.of<FavoriteProvider>(context, listen: false)
                              .addFavorite(song);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
