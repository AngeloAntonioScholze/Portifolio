import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color.fromRGBO(18, 18, 18, 1.0),
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height * 0.15,
      title: const Text(
        'Good evening',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
      bottom: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.delete),
          ),
          Tab(
            icon: Icon(Icons.delete),
          )
        ],
      ),
    );
  }
}
