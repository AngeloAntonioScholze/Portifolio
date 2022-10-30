import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/icons/custom_icons_icons.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.bell,
      ),
      color: Colors.white,
    );
  }
}

class RecentButton extends StatelessWidget {
  const RecentButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed: () {},
      icon: const Icon(
        Icons.av_timer,
      ),
      color: Colors.white,
    );
  }
}

class ConfigurationButton extends StatelessWidget {
  const ConfigurationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed: () {},
      icon: const Icon(
        CustomIcons.cogOutline,
      ),
      color: Colors.white,
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: const Icon(
        Icons.search,
      ),
      color: Colors.white,
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: const Icon(
        Icons.home,
      ),
      color: Colors.white,
    );
  }
}

class LibraryButton extends StatelessWidget {
  const LibraryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: const Icon(
        Icons.bar_chart_sharp,
        size: 36,
      ),
      color: Colors.white,
    );
  }
}
