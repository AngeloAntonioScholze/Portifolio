import 'package:flutter/material.dart';

import 'content_row.dart';
import 'main_screen_grid.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(18, 18, 18, 1.0),
      ),
      child: const CustomScrollView(
        slivers: [
          MainScreenGrid(),
          ContentRow(),
          ContentRow(),
          ContentRow(),
          ContentRow(),
          ContentRow(),
          ContentRow(),
        ],
      ),
    );
  }
}
