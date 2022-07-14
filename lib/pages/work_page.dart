import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hovering/hovering.dart';
import 'package:kedk_portfolio/const/const.dart';
import 'package:kedk_portfolio/data/work_data.dart';
import 'package:kedk_portfolio/providers/app_theme_provider.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: works
          .map((e) => SkillItem(
                workData: e,
              ))
          .toList(),
    );
  }
}

class SkillItem extends ConsumerWidget {
  const SkillItem({
    Key? key,
    required this.workData,
  }) : super(key: key);
  final WorkData workData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var appTheme = ref.watch(themeProvider);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: HoverWidget(
        hoverChild: Container(
          width: 280,
          height: 230,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          color: appTheme.themeKey == lightTheme
              ? AppThemeData.black.withOpacity(.15)
              : AppThemeData.white.withOpacity(.15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                workData.projectTitle,
                style: appTheme.themeKey == lightTheme
                    ? const TextStyle(color: AppThemeData.black)
                    : const TextStyle(color: AppThemeData.white),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                if (workData.playStoreURL != null)
                  InkResponse(
                    child: Icon(
                      Icons.shop,
                      color: appTheme.themeKey == lightTheme
                          ? AppThemeData.black
                          : AppThemeData.white,
                    ),
                    onTap: () {},
                  ),
                if (workData.figmaURL != null)
                  InkResponse(
                    child: Image.asset(
                      Assets.figmaImage,
                      width: 25,
                      filterQuality: FilterQuality.high,
                    ),
                    onTap: () {},
                  ),
                if (workData.githubURL != null)
                  InkResponse(
                    child: Image.asset(
                      appTheme.themeKey == lightTheme
                          ? Assets.githubIcon
                          : Assets.githubIconWhite,
                      width: 25,
                      filterQuality: FilterQuality.high,
                    ),
                    onTap: () {},
                  ),
                if (workData.caseStudyTitle != null)
                  InkResponse(
                    child: Icon(
                      Icons.visibility,
                      color: appTheme.themeKey == lightTheme
                          ? AppThemeData.black
                          : AppThemeData.white,
                    ),
                    onTap: () {},
                  ),
              ]),
            ],
          ),
        ),
        onHover: (event) {
          debugPrint('Hovering');
        },
        child: Card(
          child: SizedBox(
            width: 280,
            height: 230,
            child: Image.asset(
              workData.imageURL,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
