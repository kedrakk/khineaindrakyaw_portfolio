import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Work Page",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
