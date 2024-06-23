import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_redesign/constants/constants.dart';
import 'package:spotify_redesign/constants/icons.dart';
import 'package:spotify_redesign/widgets/album_art_widget.dart';

class NowPlayingBarWidget extends StatefulWidget {
  final double progress;
  const NowPlayingBarWidget(this.progress, {super.key});

  @override
  State<NowPlayingBarWidget> createState() => _NowPlayingBarWidgetState();
}

class _NowPlayingBarWidgetState extends State<NowPlayingBarWidget> {
  bool isPlaying = false;
  bool isInPlaylist = false;

  _toggleIsPlaying() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  _toggleIsInPlaylist() {
    setState(() {
      isInPlaylist = !isInPlaylist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(6.0, 6.0, 6.0, 2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: AlbumArtWidget(),
                ),
                Expanded(
                  flex: 4,
                  child: _nowPlayingDetailsWidget(),
                ),
                Expanded(
                  flex: 2,
                  child: _nowPlayingCTAsWidget(isPlaying, isInPlaylist),
                ),
              ],
            ),
            _progressIndicatorWidget(widget.progress),
          ],
        ),
      ),
    );
  }

  Widget _nowPlayingCTAsWidget(bool isPlaying, bool isInPlaylist) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () => _toggleIsInPlaylist(),
          icon: SvgPicture.asset(
            isInPlaylist ? AppIcons.checkFilled : AppIcons.playlist,
            height: Constants.iconSize,
          ),
        ),
        IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () => _toggleIsPlaying(),
          icon: SvgPicture.asset(
            isPlaying ? AppIcons.pauseSimple : AppIcons.playSimple,
            height: Constants.iconSize,
          ),
        )
      ],
    );
  }

  Widget _nowPlayingDetailsWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Get Lucky (feat. Pharrell Williams and Nile Rodgers)",
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
          Text(
            "Daft Punk",
            style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
          ),
        ],
      ),
    );
  }

  Widget _progressIndicatorWidget(double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      child: SizedBox(
        height: 2.0,
        child: LinearProgressIndicator(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          backgroundColor: Theme.of(context).colorScheme.onSecondary,
          value: progress,
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.tertiary),
        ),
      ),
    );
  }
}
