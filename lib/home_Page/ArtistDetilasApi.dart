// import 'package:flutter/material.dart';
// import 'package:spotify_final_project/Model/model.dart';
// import 'package:spotify_final_project/Model/modelTrack.dart';
// import 'package:spotify_final_project/api/service.dart';
// // import 'package:spotify_final_project/Services/api_service.dart'; // Update with correct import if needed

// class ArtistDetailsPage extends StatefulWidget {
//   const ArtistDetailsPage({super.key});

//   @override
//   _ArtistDetailsPageState createState() => _ArtistDetailsPageState();
// }

// class _ArtistDetailsPageState extends State<ArtistDetailsPage> {
//   late Future<ArtistDetilasApiResponse> artistDetails;

//   @override
//   void initState() {
//     super.initState();
//     artistDetails = ApiService().fetchArtistTracks(); // Fetch artist details
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Artist Details'),
//       ),
//       body: FutureBuilder<ArtistDetilasApiResponse>(
//         future: artistDetails,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data == null) {
//             return Center(child: Text('No data available.'));
//           } else {
//             final artistData = snapshot.data!;
//             return Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Artist Info
//                   Text(
//                     'Artist: ${artistData.artist.name}',
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     'Genre: ${artistData.artist.genre}',
//                     style: TextStyle(fontSize: 18),
//                   ),
//                   SizedBox(height: 16),
                  
//                   // List of Tracks
//                   Text(
//                     'Tracks:',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: artistData.tracks.length,
//                       itemBuilder: (context, index) {
//                         final track = artistData.tracks[index];
//                         return ListTile(
//                           title: Text(track.name),
//                           subtitle: Text('Artist: ${track.artist.name}'),
//                           trailing: IconButton(
//                             icon: Icon(Icons.play_arrow),
//                             onPressed: () {
//                               // Handle track play (optional)
//                             },
//                           ),
//                           onTap: () {
//                             // Optionally, you can navigate to a different page for track details
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
