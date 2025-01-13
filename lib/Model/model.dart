class ArtistDetilasApiResponse {
  Meta meta;
  Response response;

  ArtistDetilasApiResponse({
    required this.meta,
    required this.response,
  });

  factory ArtistDetilasApiResponse.fromJson(Map<String, dynamic> json) {
    return ArtistDetilasApiResponse(
      meta: Meta.fromJson(json['meta']),
      response: Response.fromJson(json['response']),
    );
  }
}

class Meta {
  int status;

  Meta({
    required this.status,
  });

  factory Meta.fromJson(Map<String, dynamic> json) {
    return Meta(
      status: json['status'],
    );
  }
}

class Response {
  List<Song> songs;
  int nextPage;

  Response({
    required this.songs,
    required this.nextPage,
  });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      songs: (json['songs'] as List<dynamic>)
          .map((songJson) => Song.fromJson(songJson))
          .toList(),
      nextPage: json['next_page'],
    );
  }
}

class Song {
  int annotationCount;
  String apiPath;
  String artistNames;
  String fullTitle;
  String headerImageThumbnailUrl;
  String headerImageUrl;
  int id;
  int lyricsOwnerId;
  LyricsState lyricsState;
  String path;
  String primaryArtistNames;
  int? pyongsCount;
  String relationshipsIndexUrl;
  ReleaseDateComponents? releaseDateComponents;
  String? releaseDateForDisplay;
  String? releaseDateWithAbbreviatedMonthForDisplay;
  String songArtImageThumbnailUrl;
  String songArtImageUrl;
  Stats stats;
  String title;
  String titleWithFeatured;
  String url;
  List<Artist> featuredArtists;
  Artist primaryArtist;
  List<Artist> primaryArtists;

  Song({
    required this.annotationCount,
    required this.apiPath,
    required this.artistNames,
    required this.fullTitle,
    required this.headerImageThumbnailUrl,
    required this.headerImageUrl,
    required this.id,
    required this.lyricsOwnerId,
    required this.lyricsState,
    required this.path,
    required this.primaryArtistNames,
    required this.pyongsCount,
    required this.relationshipsIndexUrl,
    required this.releaseDateComponents,
    required this.releaseDateForDisplay,
    required this.releaseDateWithAbbreviatedMonthForDisplay,
    required this.songArtImageThumbnailUrl,
    required this.songArtImageUrl,
    required this.stats,
    required this.title,
    required this.titleWithFeatured,
    required this.url,
    required this.featuredArtists,
    required this.primaryArtist,
    required this.primaryArtists,
  });

  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      annotationCount: json['annotation_count'],
      apiPath: json['api_path'],
      artistNames: json['artist_names'],
      fullTitle: json['full_title'],
      headerImageThumbnailUrl: json['header_image_thumbnail_url'],
      headerImageUrl: json['header_image_url'],
      id: json['id'],
      lyricsOwnerId: json['lyrics_owner_id'],
      lyricsState: _getLyricsStateFromString(json['lyrics_state']),
      path: json['path'],
      primaryArtistNames: json['primary_artist_names'],
      pyongsCount: json['pyongs_count'],
      relationshipsIndexUrl: json['relationships_index_url'],
      releaseDateComponents: json['release_date_components'] != null
          ? ReleaseDateComponents.fromJson(json['release_date_components'])
          : null,
      releaseDateForDisplay: json['release_date_for_display'],
      releaseDateWithAbbreviatedMonthForDisplay: json['release_date_with_abbreviated_month_for_display'],
      songArtImageThumbnailUrl: json['song_art_image_thumbnail_url'],
      songArtImageUrl: json['song_art_image_url'],
      stats: Stats.fromJson(json['stats']),
      title: json['title'],
      titleWithFeatured: json['title_with_featured'],
      url: json['url'],
      featuredArtists: (json['featured_artists'] as List<dynamic>? ?? [])
          .map((artistJson) => Artist.fromJson(artistJson))
          .toList(),
      primaryArtist: Artist.fromJson(json['primary_artist']),
      primaryArtists: (json['primary_artists'] as List<dynamic>? ?? [])
          .map((artistJson) => Artist.fromJson(artistJson))
          .toList(),
    );
  }

  // Add helper function to safely parse the LyricsState enum
  static LyricsState _getLyricsStateFromString(String? value) {
    switch (value) {
      case 'COMPLETE':
        return LyricsState.COMPLETE;
      default:
        return LyricsState.COMPLETE; // Return a default value if unknown
    }
  }
}

class Artist {
  String apiPath;
  String headerImageUrl;
  int id;
  String imageUrl;
  bool isMemeVerified;
  bool isVerified;
  String name;
  String url;
  int? iq;

  Artist({
    required this.apiPath,
    required this.headerImageUrl,
    required this.id,
    required this.imageUrl,
    required this.isMemeVerified,
    required this.isVerified,
    required this.name,
    required this.url,
    this.iq,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
      apiPath: json['api_path'],
      headerImageUrl: json['header_image_url'],
      id: json['id'],
      imageUrl: json['image_url'],
      isMemeVerified: json['is_meme_verified'] ?? false,
      isVerified: json['is_verified'] ?? false,
      name: json['name'],
      url: json['url'],
      iq: json['iq'],
    );
  }
}

enum LyricsState {
  COMPLETE,
}

class ReleaseDateComponents {
  int year;
  int month;
  int day;

  ReleaseDateComponents({
    required this.year,
    required this.month,
    required this.day,
  });

  factory ReleaseDateComponents.fromJson(Map<String, dynamic> json) {
    return ReleaseDateComponents(
      year: json['year'],
      month: json['month'],
      day: json['day'],
    );
  }
}

class Stats {
  int unreviewedAnnotations;
  bool hot;
  int? pageviews;

  Stats({
    required this.unreviewedAnnotations,
    required this.hot,
    this.pageviews,
  });

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      unreviewedAnnotations: json['unreviewed_annotations'],
      hot: json['hot'],
      pageviews: json['pageviews'],
    );
  }
}
