import 'package:flutter/cupertino.dart';

bool isPortait(BuildContext context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}
