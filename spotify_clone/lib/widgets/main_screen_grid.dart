import 'package:flutter/material.dart';

class MainScreenGrid extends StatelessWidget {
  const MainScreenGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      children: _createGridCards(),
    );
  }

  List<Widget> _createGridCards() {
    List<Widget> _cards = [];
    for (int i = 0; i < 6; i++) {
      _cards.add(
        Card(
          color: Colors.red,
          child: Container(),
        ),
      );
    }
    return _cards;
  }
}
