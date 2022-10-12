import 'package:flutter/material.dart';

class HomeTagsRow extends SliverPersistentHeaderDelegate {
  HomeTagsRow();

  final double minHeight = 56.0;
  final double maxHeight = 64.0;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: maxHeight,
      color: const Color.fromRGBO(18, 18, 18, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
              child: const Text(
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
