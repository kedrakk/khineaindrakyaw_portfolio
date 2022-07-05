import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/providers/nav_provider.dart';

import '../data/data.dart';
import '../providers/app_theme_provider.dart';
import '../widgets/widgets.dart';

class HomePage extends ConsumerWidget {
  HomePage({
    Key? key,
    this.currentIndex = 0,
  }) : super(key: key);
  final int currentIndex;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeProvider = ref.read(themeProvider);
    final navBody = ref.watch(navProvider);
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: FixedNavBarWidget(
          onMenuPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          navItemTitle: navitems,
          onLogoPressed: () => ref.read(navProvider.notifier).changePage(0),
          onNavItemClicked: (newIndex) =>
              ref.read(navProvider.notifier).changePage(newIndex),
          themeIcon: appThemeProvider.themeIcon,
          onThemeIconPress: () => ref
              .read(themeProvider.notifier)
              .changeTheme(appThemeProvider.themeKey),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          for (final item in navitems)
            ListTile(
              leading: item.icon,
              title: Text(item.title),
              onTap: () {
                ref.read(navProvider.notifier).changePage(
                      navitems.indexOf(item),
                    );
                _scaffoldKey.currentState!.closeDrawer();
              },
            ),
        ]),
      ),
      body: navBody.body,
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
