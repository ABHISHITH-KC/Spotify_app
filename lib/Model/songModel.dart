class YouTubeSong {
  final String title;
  final String artist;
  final String youtubeUrl;

  // Constructor to initialize fields
  YouTubeSong({
    required this.title,
    required this.artist,
    required this.youtubeUrl,
  });

  // Factory method to create a YouTubeSong instance from JSON
  factory YouTubeSong.fromJson(Map<String, dynamic> json) {
    return YouTubeSong(
      title: json['title'],
      artist: json['artist'],
      youtubeUrl: json['youtubeUrl'],
    );
  }

  // Method to convert a YouTubeSong instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'artist': artist,
      'youtubeUrl': youtubeUrl,
    };
  }
}
