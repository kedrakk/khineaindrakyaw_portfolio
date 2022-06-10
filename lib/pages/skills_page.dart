import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Skills Page",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
