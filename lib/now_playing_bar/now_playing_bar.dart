import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_redesign/constants.dart';

class NowPlayingBar extends StatefulWidget {
  final double progress;
  const NowPlayingBar(this.progress, {super.key});

  @override
  State<NowPlayingBar> createState() => _NowPlayingBarState();
}

class _NowPlayingBarState extends State<NowPlayingBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: _nowPlayingAlbumArt(),
                ),
                Expanded(
                  flex: 4,
                  child: _nowPlayingDetails(),
                ),
                Expanded(
                  flex: 2,
                  child: _nowPlayingCTAs(),
                ),
              ],
            ),
            _progressIndicator(widget.progress),
          ],
        ),
      ),
    );
  }

  Widget _nowPlayingCTAs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/Add to Playlist.svg",
            height: Constants.iconSize,
          ),
        ),
        IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/Play Simple.svg",
            height: Constants.iconSize,
          ),
        )
      ],
    );
  }

  Widget _nowPlayingDetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
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

  Widget _nowPlayingAlbumArt() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(6.0),
        ),
        child: Image.asset(
          "assets/images/now_playing.png",
          width: 48,
          height: 48,
        ),
      ),
    );
  }

  Widget _progressIndicator(double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 2.0,
      ),
      child: SizedBox(
        height: 4,
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
