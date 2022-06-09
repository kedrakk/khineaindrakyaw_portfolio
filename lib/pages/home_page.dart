import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/providers/nav_provider.dart';
import 'package:kedk_portfolio/widgets/navbar.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeNavItem = ref.watch(navProvider);
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
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: NavItems.navitems
              .map<Widget>(
                (e) => ListTile(
                  title: Text(
                    e.title,
                  ),
                ),
              )
              .toList(),
        ),
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
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
