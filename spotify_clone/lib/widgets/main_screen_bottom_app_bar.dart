import 'package:flutter/material.dart';

class MainScreenBottomAppBar extends StatelessWidget {
  const MainScreenBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      height: 64,
    );
  }
}
