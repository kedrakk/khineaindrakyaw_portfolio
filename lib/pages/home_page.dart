import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/providers/nav_provider.dart';
import 'package:kedk_portfolio/widgets/navbar.dart';
import 'package:kedk_portfolio/const/string_extensions.dart';

import '../providers/app_theme_provider.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeNavItem = ref.watch(navProvider);
    final appThemeProvider = ref.read(themeProvider);
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: FixedNavBarWidget(
          onMenuPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          navItemTitle: NavItems.navitems,
          onNavItemClicked: (currentIndex) =>
              ref.read(navProvider.notifier).changePage(currentIndex),
          themeIcon: appThemeProvider.themeIcon,
          onThemeIconPress: () => ref
              .read(themeProvider.notifier)
              .changeTheme(appThemeProvider.themeKey),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          for (final item in NavItems.navitems)
            ListTile(
              leading: item.icon,
              title: Text(item.title),
              onTap: () {
                ref.read(navProvider.notifier).changePage(
                      NavItems.navitems.indexOf(item),
                    );
                _scaffoldKey.currentState!.closeDrawer();
              },
            ),
          ListTile(
            leading: appThemeProvider.themeIcon,
            title: Text(appThemeProvider.themeKey.toCapitalizedString()),
            onTap: () => ref
                .read(themeProvider.notifier)
                .changeTheme(appThemeProvider.themeKey),
          ),
        ]),
      ),
      body: activeNavItem.body,
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
