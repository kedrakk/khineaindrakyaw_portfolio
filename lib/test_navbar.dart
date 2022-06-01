import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kedk_portfolio/const/nav_items.dart';

class FixedNavBarWidget extends StatelessWidget {
  const FixedNavBarWidget({Key? key}) : super(key: key);

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
        trailing: Row(
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
                .toList()),
      ),
    );
  }
}
