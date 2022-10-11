import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends SliverPersistentHeaderDelegate {
  HomeAppBar();

  final double maxHeight = 64.0;
  final double minHeight = 0.0;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: const Color.fromRGBO(18, 18, 18, 1.0),
      height: maxHeight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildGreetingMessage(),
            _buildIconButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildGreetingMessage() {
    return const Text(
      'Boa noite',
      style: TextStyle(
        color: Colors.white,
        fontFamily: 'Spotify',
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildIconButtons() {
    List<Widget> _buttons = [];
    for (int i = 0; i < 3; i++) {
      _buttons.add(
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.bell, size: 28),
          color: Colors.white,
        ),
      );
    }
    return SizedBox(
      child: Row(
        children: [..._buttons],
      ),
    );
  }

  @override
  bool shouldRebuild(HomeAppBar oldDelegate) {
    return false;
  }
}

class HomeTagsRow extends SliverPersistentHeaderDelegate {
  HomeTagsRow();

  @override
  double get minExtent => 64.0;
  @override
  double get maxExtent => 64.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 64,
      color: const Color.fromRGBO(18, 18, 18, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
        child: Row(
          children: [
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(42, 42, 42, 1.0),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  'Music',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontFamily: 'Spotify',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(42, 42, 42, 1.0),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Text(
                  'Podcasts & Shows',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1.0),
                    fontFamily: 'Spotify',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(HomeTagsRow oldDelegate) {
    return false;
  }
}
