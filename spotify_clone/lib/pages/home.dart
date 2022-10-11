import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/home_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeAppBar() as SliverAppBar,
        ],
      ),
    );
  }

  List<Widget> buildIconButtons() {
    List<Widget> _buttons = [];
    for (int i = 0; i < 3; i++) {
      _buttons.add(
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.bell),
          color: Colors.white,
        ),
      );
    }
    return _buttons;
  }
}
