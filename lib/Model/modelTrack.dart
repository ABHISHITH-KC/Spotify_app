// class ArtsitTrackApiResponse {
//   Track track;

//   ArtsitTrackApiResponse({
//     required this.track,
//   });

//   // fromJson method should parse the data and return an instance of ArtsitTrackApiResponse
//   static Future<ArtsitTrackApiResponse> fromJson(Map<String, dynamic> data) async {
//     try {
//       final trackData = data['track'];
//       // Parse the track data into the Track model
//       Track track = Track.fromJson(trackData);
//       return ArtsitTrackApiResponse(track: track);
//     } catch (e) {
//       throw Exception('Failed to parse track data: $e');
//     }
//   }
// }

// class Track {
//   String name;
//   String url;
//   String duration;
//   Streamable streamable;
//   String listeners;
//   String playcount;
//   Artist artist;
//   Album album;
//   Toptags toptags;
//   Wiki wiki;

//   Track({
//     required this.name,
//     required this.url,
//     required this.duration,
//     required this.streamable,
//     required this.listeners,
//     required this.playcount,
//     required this.artist,
//     required this.album,
//     required this.toptags,
//     required this.wiki,
//   });

//   // fromJson method to parse track data
//   factory Track.fromJson(Map<String, dynamic> json) {
//     return Track(
//       name: json['name'] ?? 'Unknown Track',
//       url: json['url'] ?? '',
//       duration: json['duration'] ?? '0',
//       streamable: Streamable.fromJson(json['streamable']),
//       listeners: json['listeners'] ?? '0',
//       playcount: json['playcount'] ?? '0',
//       artist: Artist.fromJson(json['artist']),
//       album: Album.fromJson(json['album']),
//       toptags: Toptags.fromJson(json['toptags']),
//       wiki: Wiki.fromJson(json['wiki']),
//     );
//   }
// }

// class Album {
//   String artist;
//   String title;
//   String url;
//   List<Image> image;

//   Album({
//     required this.artist,
//     required this.title,
//     required this.url,
//     required this.image,
//   });

//   // fromJson method to parse album data
//   factory Album.fromJson(Map<String, dynamic> json) {
//     var imageList = (json['image'] as List)
//         .map((imageJson) => Image.fromJson(imageJson))
//         .toList();
//     return Album(
//       artist: json['artist'] ?? 'Unknown Artist',
//       title: json['title'] ?? 'Unknown Title',
//       url: json['url'] ?? '',
//       image: imageList,
//     );
//   }
// }

// class Image {
//   String text;
//   String size;

//   Image({
//     required this.text,
//     required this.size,
//   });

//   // fromJson method to parse image data
//   factory Image.fromJson(Map<String, dynamic> json) {
//     return Image(
//       text: json['text'] ?? '',
//       size: json['size'] ?? '',
//     );
//   }
// }

// class Artist {
//   String name;
//   String mbid;
//   String url;

//   Artist({
//     required this.name,
//     required this.mbid,
//     required this.url,
//   });

//   // fromJson method to parse artist data
//   factory Artist.fromJson(Map<String, dynamic> json) {
//     return Artist(
//       name: json['name'] ?? 'Unknown Artist',
//       mbid: json['mbid'] ?? '',
//       url: json['url'] ?? '',
//     );
//   }
// }

// class Streamable {
//   String text;
//   String fulltrack;

//   Streamable({
//     required this.text,
//     required this.fulltrack,
//   });

//   // fromJson method to parse streamable data
//   factory Streamable.fromJson(Map<String, dynamic> json) {
//     return Streamable(
//       text: json['text'] ?? '',
//       fulltrack: json['fulltrack'] ?? '',
//     );
//   }
// }

// class Toptags {
//   List<Tag> tag;

//   Toptags({
//     required this.tag,
//   });

//   // fromJson method to parse toptags data
//   factory Toptags.fromJson(Map<String, dynamic> json) {
//     var tagList = (json['tag'] as List)
//         .map((tagJson) => Tag.fromJson(tagJson))
//         .toList();
//     return Toptags(tag: tagList);
//   }
// }

// class Tag {
//   String name;
//   String url;

//   Tag({
//     required this.name,
//     required this.url,
//   });

//   // fromJson method to parse tag data
//   factory Tag.fromJson(Map<String, dynamic> json) {
//     return Tag(
//       name: json['name'] ?? 'Unknown Tag',
//       url: json['url'] ?? '',
//     );
//   }
// }

// class Wiki {
//   String published;
//   String summary;
//   String content;

//   Wiki({
//     required this.published,
//     required this.summary,
//     required this.content,
//   });

//   // fromJson method to parse wiki data
//   factory Wiki.fromJson(Map<String, dynamic> json) {
//     return Wiki(
//       published: json['published'] ?? '',
//       summary: json['summary'] ?? '',
//       content: json['content'] ?? '',
//     );
//   }
// }
