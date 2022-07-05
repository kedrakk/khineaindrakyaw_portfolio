import 'package:flutter/material.dart';
import '../data/data.dart';
import '../service/locator.dart';
import '../service/orientation_service.dart';
import '../const/const.dart';

class FixedNavBarWidget extends StatelessWidget {
  const FixedNavBarWidget({
    Key? key,
    required this.onMenuPressed,
    required this.navItemTitle,
    required this.onNavItemClicked,
    required this.onThemeIconPress,
    required this.themeIcon,
    required this.onLogoPressed,
  }) : super(key: key);
  final void Function()? onMenuPressed;
  final void Function()? onLogoPressed;
  final Function(int index) onNavItemClicked;
  final List<NavItems> navItemTitle;
  final void Function()? onThemeIconPress;
  final Widget themeIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      margin: const EdgeInsets.all(5),
      child: AppBar(
        leading: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: TextButton(
            onPressed: onLogoPressed,
            child: Text(
              "</>",
              style: AppThemeData.headline6Theme,
            ),
          ),
        ),
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: TextButton(
            onPressed: onLogoPressed,
            child: Text(
              "{ KhinEaindra Kyaw }",
              style: AppThemeData.headline6Theme,
            ),
          ),
        ),
        actions: [
          getIt<OrientationService>().isPortait(context)
              ? Row(
                  children: [
                    IconButton(
                      onPressed: onMenuPressed,
                      icon: const Icon(
                        Icons.menu,
                      ),
                    ),
                    IconButton(
                      onPressed: onThemeIconPress,
                      icon: themeIcon,
                    ),
                  ],
                )
              : Row(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: navItemTitle
                          .map<Widget>(
                            (e) => TextButton(
                              onPressed: () {
                                onNavItemClicked(navItemTitle.indexOf(e));
                              },
                              child: Text(
                                e.title,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    IconButton(
                      onPressed: onThemeIconPress,
                      icon: themeIcon,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
