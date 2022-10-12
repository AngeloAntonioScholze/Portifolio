import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        Icons.settings_applications_sharp,
        size: 32,
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
        size: 32,
      ),
      color: Colors.white,
    );
  }
}
