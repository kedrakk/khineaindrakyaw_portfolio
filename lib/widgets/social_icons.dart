import 'package:flutter/material.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({
    Key? key,
    required this.icon,
    required this.link,
  }) : super(key: key);
  final Widget icon;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: CircleAvatar(
        backgroundColor: Colors.white.withOpacity(.15),
        radius: 20,
        child: IconButton(
          icon: icon,
          onPressed: () {
            debugPrint(link);
          },
        ),
      ),
    );
  }
}
