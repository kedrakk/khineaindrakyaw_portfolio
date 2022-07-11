import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/const/const.dart';
import 'package:kedk_portfolio/data/skill_data.dart';
import 'package:kedk_portfolio/widgets/skill_block.dart';

import '../providers/app_theme_provider.dart';

class SkillsPage extends ConsumerWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeProvider = ref.read(themeProvider);
    final TextStyle textStyle = appThemeProvider.themeKey == lightTheme
        ? const TextStyle(
            color: Colors.black,
          )
        : const TextStyle(color: Colors.white);
    final Color color = appThemeProvider.themeKey == lightTheme
        ? Colors.black.withOpacity(.15)
        : Colors.white.withOpacity(.15);
    return ListView(
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          "WHAT I DO",
          textAlign: TextAlign.center,
          style: AppThemeData.headline6Theme,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Currently working as a Flutter Mobile Developer, and also participating in web development and UX design.",
          textAlign: TextAlign.center,
          style: appThemeProvider.themeKey == lightTheme
              ? const TextStyle(color: Colors.black)
              : const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        SkillItemsWrapWidget(
          skillData: programmingLanguages,
          textStyle: textStyle,
          color: color,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class SkillItemsWrapWidget extends StatelessWidget {
  const SkillItemsWrapWidget({
    Key? key,
    required this.skillData,
    required this.textStyle,
    required this.color,
  }) : super(key: key);
  final List<SkillData> skillData;
  final TextStyle textStyle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: programmingLanguages
          .map(
            (e) => SkillBlockWidget(
              assetName: e.asset,
              title: Text(
                e.title,
                style: textStyle,
              ),
              bgColor: color,
            ),
          )
          .toList(),
    );
  }
}
