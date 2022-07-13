import 'package:flutter/material.dart';
import 'package:kedk_portfolio/const/const.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              Assets.profileImage,
              width: 200,
              fit: BoxFit.fitWidth,
              filterQuality: FilterQuality.high,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'QR Scanner',
            style: AppThemeData.headline6Theme,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("View On Google Play"),
          const SizedBox(
            height: 10,
          ),
          const Text("View wireframes"),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
