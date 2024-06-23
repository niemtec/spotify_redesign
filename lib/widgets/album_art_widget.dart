import 'package:flutter/material.dart';

class AlbumArtWidget extends StatelessWidget {
  const AlbumArtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: const BorderRadius.all(
        Radius.circular(12.0),
      ),
      child: Image.asset(
        "assets/images/now_playing.png",
        width: 46,
        height: 46,
      ),
    );
  }
}
