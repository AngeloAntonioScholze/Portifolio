import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/buttons.dart';

class MainScreenBottomAppBar extends StatelessWidget {
  const MainScreenBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(18, 18, 18, 1.0),
      ),
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _buildActions(),
      ),
    );
  }

  List<Widget> _buildActions() {
    List<Widget> _actions = [];
    _actions.addAll(const [
      HomeButton(),
      SearchButton(),
      LibraryButton(),
    ]);
    return _actions;
  }
}
