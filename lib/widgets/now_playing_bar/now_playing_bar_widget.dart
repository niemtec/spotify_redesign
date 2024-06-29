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
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      bool isSmall = constraints.maxWidth > Constants.screenBreakpointSmall;
      // bool isMedium = constraints.maxWidth > Constants.screenBreakpointMedium;
      bool isLarge = constraints.maxWidth > Constants.screenBreakpointLarge;

      if (isLarge) {
        return _largeNowPlayingBarWidget();
      }
      return _smallNowPlayingBarWidget();
    });
  }

  Widget _largeNowPlayingBarWidget() {
    return _nowPlayingContainerWidget(
      80,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () => _toggleIsPlaying(),
            icon: SvgPicture.asset(
              isPlaying ? AppIcons.pause : AppIcons.play,
              height: Constants.iconSize * 1.2,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () => {},
            icon: SvgPicture.asset(
              AppIcons.prev,
              height: Constants.iconSize,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () => {},
            icon: SvgPicture.asset(
              AppIcons.next,
              height: Constants.iconSize,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () => {},
            icon: SvgPicture.asset(
              AppIcons.shuffle,
              height: Constants.iconSize,
            ),
          ),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () => {},
            icon: SvgPicture.asset(
              AppIcons.loop,
              height: Constants.iconSize,
            ),
          ),
          Text("00:00"),
          Container(width: 200, child: _progressIndicatorWidget(0.4)),
          Text("4:45"),
          IconButton(
            padding: const EdgeInsets.all(0.0),
            onPressed: () => {},
            icon: SvgPicture.asset(
              AppIcons.volume,
              height: Constants.iconSize,
            ),
          ),
          AlbumArtWidget(),
          Container(width: 100, child: _nowPlayingDetailsWidget()),
          _nowPlayingActionCTAsWidget(isInPlaylist, isExpanded: true),
          VerticalDivider(
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _smallNowPlayingBarWidget() {
    return _nowPlayingContainerWidget(
      64,
      Padding(
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

  Widget _nowPlayingContainerWidget(double height, Widget child) {
    return Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: child);
  }

  Widget _nowPlayingCTAsWidget(bool isPlaying, bool isInPlaylist) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _nowPlayingActionCTAsWidget(isInPlaylist),
        IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () => _toggleIsPlaying(),
          icon: SvgPicture.asset(
            isPlaying ? AppIcons.pauseSimple : AppIcons.playSimple,
            height: Constants.iconSize,
          ),
        ),
      ],
    );
  }

  Widget _nowPlayingActionCTAsWidget(bool isInPlaylist,
      {bool isLiked = false, bool isExpanded = false}) {
    return Row(
      children: [
        isExpanded
            ? IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () => {},
                icon: SvgPicture.asset(
                  isLiked ? AppIcons.likeFilled : AppIcons.like,
                  height: Constants.iconSize,
                ),
              )
            : const SizedBox.shrink(),
        IconButton(
          padding: const EdgeInsets.all(0.0),
          onPressed: () => _toggleIsInPlaylist(),
          icon: SvgPicture.asset(
            isInPlaylist ? AppIcons.checkFilled : AppIcons.playlist,
            height: Constants.iconSize,
          ),
        ),
        isExpanded
            ? IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () => {},
                icon: SvgPicture.asset(
                  AppIcons.lyrics,
                  height: Constants.iconSize,
                ),
              )
            : const SizedBox.shrink(),
        isExpanded
            ? IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () => {},
                icon: SvgPicture.asset(
                  AppIcons.device,
                  height: Constants.iconSize,
                ),
              )
            : const SizedBox.shrink(),
        isExpanded
            ? IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () => {},
                icon: SvgPicture.asset(
                  AppIcons.more,
                  height: Constants.iconSize,
                ),
              )
            : const SizedBox.shrink(),
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
