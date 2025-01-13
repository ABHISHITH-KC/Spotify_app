// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:spotify_final_project/provider/favoriteClass.dart';

// class FavoritePage extends StatelessWidget {
//   const FavoritePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final favorites = Provider.of<FavoriteProvider>(context).favorite;

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Favorites"),
//       ),
//       body: favorites.isEmpty
//           ? const Center(child: Text("No favorites yet!"))
//           : ListView.builder(
//               itemCount: favorites.length,
//               itemBuilder: (context, index) {
//                 final song = favorites[index];
//                 return ListTile(
//                   title: Text(song.title),
//                   subtitle: Text(song.artist),
//                   trailing: IconButton(
//                     icon: const Icon(Icons.delete),
//                     onPressed: () {
//                       Provider.of<FavoriteProvider>(context, listen: false).removeFavorite(song);
//                     },
//                   ),
//                 );
//               },
//             ),
//     );
//   }
// }
