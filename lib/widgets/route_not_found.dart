import 'package:flutter/material.dart';

import '../navigation/app_routes.dart';

class RouteNotFoundPage extends StatelessWidget {
  const RouteNotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Route Not Found",
              style: Theme.of(context).textTheme.headline6,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouterHelper.home,
                  (route) => false,
                );
              },
              child: const Text("Back To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
