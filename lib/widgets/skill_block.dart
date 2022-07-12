import 'package:flutter/material.dart';
import 'package:kedk_portfolio/service/locator.dart';

import '../service/orientation_service.dart';

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
    final double height =
        getIt<OrientationService>().isPortait(context) ? 50 : 100;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        child: Container(
          width: height + 20,
          padding: const EdgeInsets.all(10.0),
          color: bgColor,
          child: Image.asset(
            assetName,
            fit: BoxFit.fitWidth,
            filterQuality: FilterQuality.high,
            width: height,
          ),
        ),
      ),
    );
  }
}
