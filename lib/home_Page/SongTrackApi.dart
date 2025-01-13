

// import 'package:flutter/material.dart';
// import 'package:spotify_final_project/Model/modelTrack.dart' as modelTrack;

// class PlaylistWidget extends StatelessWidget {
//   final Future<modelTrack.ArtsitTrackApiResponse> trackDetails;

//   const PlaylistWidget({super.key, required this.trackDetails});

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<modelTrack.ArtsitTrackApiResponse>(
//       future: trackDetails,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(
//             child: Text(
//               'Error: ${snapshot.error}',
//               style: const TextStyle(color: Colors.white),
//             ),
//           );
//         } else if (!snapshot.hasData || snapshot.data!.track == null) {
//           return const Center(
//             child: Text(
//               'No tracks available',
//               style: TextStyle(color: Colors.white),
//             ),
//           );
//         }

//         final track = snapshot.data!.track;
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 'Playlist',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//               const SizedBox(height: 16),
//               ListTile(
//                 leading: const Icon(
//                   Icons.play_circle,
//                   color: Colors.white,
//                 ),
//                 title: Text(
//                   track.name,
//                   style: const TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text(
//                   track.artist.name,
//                   style: const TextStyle(color: Colors.white70),
//                 ),
//                 trailing: Text(
//                   _formatDuration(track.duration),
//                   style: const TextStyle(color: Colors.white70),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   String _formatDuration(String? duration) {
//     final intDuration = int.tryParse(duration ?? '0') ?? 0;
//     final minutes = intDuration ~/ 60;
//     final seconds = intDuration % 60;
//     return '$minutes:${seconds.toString().padLeft(2, '0')}';
//   }
// }
