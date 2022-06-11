import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kedk_portfolio/pages/home_page.dart';
import 'package:kedk_portfolio/pages/skills_page.dart';
import 'package:kedk_portfolio/pages/work_page.dart';

@immutable
class NavItems {
  const NavItems(
      {required this.index,
      required this.title,
      required this.body,
      required this.icon});

  final int index;
  final String title;
  final Widget body;
  final Widget icon;

  NavItems copyWith({int? index, String? title, Widget? body, Widget? icon}) {
    return NavItems(
      index: index ?? this.index,
      title: title ?? this.title,
      body: body ?? this.body,
      icon: icon ?? this.icon,
    );
  }

  static const List<NavItems> navitems = [
    NavItems(
      index: 0,
      title: 'Home',
      body: HomeWidget(),
      icon: Icon(Icons.home),
    ),
    NavItems(
      index: 1,
      title: 'Work',
      body: WorkPage(),
      icon: Icon(Icons.work),
    ),
    NavItems(
      index: 2,
      title: 'Skills',
      body: SkillsPage(),
      icon: Icon(Icons.school),
    )
  ];
}

class ChangeNavNotifier extends StateNotifier<NavItems> {
  ChangeNavNotifier() : super(NavItems.navitems[0]);

  void changePage(int index) {
    state = NavItems.navitems[index];
  }
}

final navProvider = StateNotifierProvider<ChangeNavNotifier, NavItems>((ref) {
  return ChangeNavNotifier();
});
