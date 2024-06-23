import 'package:flutter/material.dart';

class RecentsGrid extends StatelessWidget {
  const RecentsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3,
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _gridItem(context);
        },
        itemCount: 6,
      ),
    );
  }
}

Widget _gridItem(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(4.0),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondary,
      borderRadius: const BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: _albumArt(),
        ),
        Expanded(
          flex: 2,
          child: _itemDetails("Title", context),
        ),
      ],
    ),
  );
}

Widget _itemDetails(String title, BuildContext context, {String? subtitle}) {
  return Padding(
    padding: const EdgeInsets.only(left: 2.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          overflow: TextOverflow.fade,
          maxLines: 1,
          softWrap: false,
        ),
        subtitle != null
            ? Text(
                "Subtitle that is also super long",
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              )
            : const SizedBox.shrink()
      ],
    ),
  );
}

Widget _albumArt() {
  return ClipRRect(
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
