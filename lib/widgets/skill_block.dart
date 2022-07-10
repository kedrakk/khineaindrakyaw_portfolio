import 'package:flutter/material.dart';

class SkillBlockWidget extends StatelessWidget {
  const SkillBlockWidget({
    Key? key,
    required this.assetName,
    required this.title,
    required this.bgColor,
  }) : super(key: key);
  final String assetName;
  final Widget title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        color: bgColor,
        child: Column(
          children: [
            Image.asset(
              assetName,
              fit: BoxFit.fitWidth,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              height: 15,
            ),
            title,
          ],
        ),
      ),
    );
  }
}
