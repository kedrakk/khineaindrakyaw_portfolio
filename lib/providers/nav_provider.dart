import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/data.dart';

class ChangeNavNotifier extends StateNotifier<NavItems> {
  ChangeNavNotifier() : super(navitems[0]);

  void changePage(int index) {
    state = navitems[index];
  }
}

final navProvider = StateNotifierProvider<ChangeNavNotifier, NavItems>((ref) {
  return ChangeNavNotifier();
});
