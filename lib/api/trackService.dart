// import 'dart:convert';  // For JSON decoding
// import 'package:spotify_final_project/Model/modelTrack.dart';  // Import your models
// import 'package:http/http.dart' as http;

// Future<ArtsitTrackApiResponse> fetchTrack() async {
//   final response = await http.get(Uri.parse(
//       'http://ws.audioscrobbler.com/2.0/?method=track.getInfo&api_key=a35b5e39de108f24a07c138c7087f543&artist=Ed%20Sheeran&track=Shape%20of%20You&format=json'));

//   // Check if the response was successful (status code 200)
//   if (response.statusCode == 200) {
//     // Decode the response body into a map
//     final Map<String, dynamic> data = jsonDecode(response.body);

//     // Parse the JSON data into the model
//     return ArtsitTrackApiResponse.fromJson(data);
//   } else {
//     // Throw an exception if the request failed
//     throw Exception('Failed to load track');
//   }
// }
