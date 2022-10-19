import 'package:flutter/material.dart';

import 'main_screen_grid.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(18, 18, 18, 1.0),
      ),
      child: CustomScrollView(
        slivers: [
          const MainScreenGrid(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {},
            ),
          )
        ],
      ),
    );
  }
}
