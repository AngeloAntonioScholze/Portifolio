import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/buttons.dart';

class HomeAppBar extends SliverPersistentHeaderDelegate {
  HomeAppBar();

  final double minHeight = 0.0;
  final double maxHeight = 64.0;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(18, 18, 18, 1),
            border: Border.all(color: Colors.red),
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildGreetingMessage(),
                _buildAction(),
              ],
            ),
          ),
        ),
      ],
      fit: StackFit.expand,
    );
  }

  Widget _buildGreetingMessage() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Boa noite',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Spotify',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildAction() {
    return Container(
      margin: const EdgeInsets.only(bottom: 0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
      ),
      child: Align(
        child: Wrap(
          children: const [
            NotificationButton(),
            RecentButton(),
            ConfigurationButton(),
          ],
        ),
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
    );
  }

  @override
  bool shouldRebuild(HomeTagsRow oldDelegate) {
    return false;
  }
}
