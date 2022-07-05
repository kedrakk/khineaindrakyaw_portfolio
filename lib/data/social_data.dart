import 'package:flutter/material.dart';

class SocialData {
  Widget icon;
  String link;
  SocialData({required this.icon, required this.link});
}

List<SocialData> socialData = [
  SocialData(
    icon: const Icon(Icons.email),
    link: "mailto:",
  ),
  // SocialData(
  //   icon: const Icon(Icons.facebook),
  //   link: "https://www.facebook.com/",
  // ),
  // SocialData(
  //   icon: const Icon(Icons.twitt),
  //   link: "https://www.twitter.com/",
  // ),
  // SocialData(
  //   icon: Icon(Icons.instagram),
  //   link: "https://www.instagram.com/",
  // ),
  // SocialData(
  //   icon: Icon(Icons.youtube),
  //   link: "https://www.youtube.com/",
  // ),
];
