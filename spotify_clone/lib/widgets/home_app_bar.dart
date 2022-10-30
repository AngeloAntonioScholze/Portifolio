import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/buttons.dart';

class HomeAppBar extends SliverPersistentHeaderDelegate {
  HomeAppBar();

  final double minHeight = 0.0;
  final double maxHeight = 80.0;

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(18, 18, 18, 1),
            ),
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
    return SizedBox(
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: 15,
        children: const [
          NotificationButton(),
          RecentButton(),
          ConfigurationButton(),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(HomeAppBar oldDelegate) {
    return false;
  }
}
