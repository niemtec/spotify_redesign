import 'package:flutter/material.dart';

class FilterChipsWidget extends StatefulWidget {
  @override
  _FilterChipsWidgetState createState() => _FilterChipsWidgetState();
}

class _FilterChipsWidgetState extends State<FilterChipsWidget> {
  List<String> _filters = ['One', 'Two', 'Three'];
  List<bool> _selected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List<Widget>.generate(
        _filters.length,
        (int index) {
          return FilterChip(
            label: Text(_filters[index]),
            selected: _selected[index],
            onSelected: (bool selected) {
              setState(() {
                _selected[index] = selected;
              });
            },
          );
        },
      ).toList(),
    );
  }
}
