import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone/widgets/custom_icons_icons.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: const Icon(FontAwesomeIcons.bell),
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
      onPressed: () {},
      icon: const Icon(
        CustomIcons.cogOutline,
        size: 26,
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
      onPressed: () {},
      icon: const Icon(
        Icons.av_timer,
        size: 30,
      ),
      color: Colors.white,
    );
  }
}
