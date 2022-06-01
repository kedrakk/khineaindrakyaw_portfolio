import 'package:flutter/material.dart';

class OrientationService {
  bool isPortait(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }
}
