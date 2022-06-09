import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kedk_portfolio/providers/nav_provider.dart';
import '../service/locator.dart';
import '../service/orientation_service.dart';

class FixedNavBarWidget extends StatelessWidget {
  const FixedNavBarWidget({
    Key? key,
    required this.onMenuPressed,
    required this.navItemTitle,
    required this.onNavItemClicked,
  }) : super(key: key);
  final void Function()? onMenuPressed;
  final Function(int index) onNavItemClicked;
  final List<NavItems> navItemTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      margin: const EdgeInsets.all(5),
      child: CupertinoNavigationBar(
        leading: CupertinoButton(
          child: const Icon(CupertinoIcons.bubble_left),
          onPressed: () {},
        ),
        trailing: getIt<OrientationService>().isPortait(context)
            ? IconButton(
                onPressed: onMenuPressed,
                icon: const Icon(
                  Icons.menu,
                ),
              )
            : Row(
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
      ),
    );
  }
}