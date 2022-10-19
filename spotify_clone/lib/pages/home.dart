import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_tags_row.dart';
import '../widgets/main_screen_body.dart';
import '../widgets/main_screen_bottom_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                delegate: HomeAppBar(),
              ),
              SliverPersistentHeader(
                delegate: HomeTagsRow(),
                pinned: true,
              ),
            ];
          },
          body: const MainScreenBody(),
        ),
        bottomNavigationBar: const MainScreenBottomAppBar(),
      ),
    );
  }
}
