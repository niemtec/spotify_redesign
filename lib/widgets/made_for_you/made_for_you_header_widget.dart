import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_redesign/constants/icons.dart';

class MadeForYouHeaderWidget extends StatelessWidget {
  const MadeForYouHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Made For You",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.more),
        ),
      ],
    );
  }
}
