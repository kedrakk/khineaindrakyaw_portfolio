import 'package:flutter/material.dart';
import 'package:kedk_portfolio/const/nav_items.dart';
import 'package:kedk_portfolio/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: FixedNavBarWidget(
          onMenuPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: navItems
              .map<Widget>(
                (e) => ListTile(
                  title: Text(
                    e['title'] ?? '',
                  ),
                ),
              )
              .toList(),
        ),
      ),
      body: const HomeWidget(),
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
