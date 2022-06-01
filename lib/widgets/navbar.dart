import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kedk_portfolio/const/nav_items.dart';

import '../service/locator.dart';
import '../service/orientation_service.dart';

class FixedNavBarWidget extends StatelessWidget {
  const FixedNavBarWidget({
    Key? key,
    required this.onMenuPressed,
  }) : super(key: key);
  final void Function()? onMenuPressed;

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
                children: navItems
                    .map<Widget>(
                      (e) => TextButton(
                        onPressed: () {},
                        child: Text(
                          e['title'] ?? '',
                        ),
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
