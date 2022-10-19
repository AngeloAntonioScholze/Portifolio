import 'package:flutter/material.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_tags_row.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          body: Center(
            child: Text('teste'),
          ),
        ),
      ),
    );
  }
}
