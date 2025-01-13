import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spotify_final_project/Model/model.dart';
// import 'model/model.dart';

class ApiService {
  static const String accessToken = '6zQI71b6GucFqH-ssxX8zUkSC86DLmdy1hw0JQHA6E4qQJJc94a5H6zyDCKJfxBk';
  static const String url = 'https://api.genius.com/artists/16775/songs'; // Corrected URL

  Future<ArtistDetilasApiResponse> fetchArtistTracks() async {
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      // Successfully received data from API
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      return ArtistDetilasApiResponse.fromJson(responseData);
    } else {
      // Handle the error (e.g., invalid status code)
      throw Exception('Failed to load data');
    }
  }
}

void main() async {
  ApiService apiService = ApiService();
  
  try {
    // Fetch artist tracks
    ArtistDetilasApiResponse response = await apiService.fetchArtistTracks();
    print('Tracks fetched: ${response.response.songs.length}'); // Corrected property access
  } catch (e) {
    print('Error: $e');
  }
}
