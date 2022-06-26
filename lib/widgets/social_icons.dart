import 'package:flutter/material.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({
    Key? key,
    required this.icons,
    required this.link,
  }) : super(key: key);
  final Widget icons;
  final String link;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 20,
      child: IconButton(
        icon: icons,
        onPressed: () {
          debugPrint(link);
        },
      ),
    );
  }
}
