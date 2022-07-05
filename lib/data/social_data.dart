import 'package:flutter/material.dart';
import '../const/const.dart';

class SocialData {
  Widget lightIcon;
  Widget darkIcon;
  String link;
  SocialData(
      {required this.lightIcon, required this.darkIcon, required this.link});
}

List<SocialData> socialData = [
  SocialData(
    lightIcon: const Icon(Icons.email),
    darkIcon: const Icon(Icons.email),
    link: "mailto:",
  ),
  SocialData(
    lightIcon: const Icon(Icons.facebook),
    darkIcon: const Icon(Icons.facebook),
    link: "https://www.facebook.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.twitterIcon,
    ),
    darkIcon: Image.asset(
      Assets.twitterIcon,
    ),
    link: "https://www.twitter.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.devIcon,
    ),
    darkIcon: Image.asset(
      Assets.devIconWhite,
    ),
    link: "https://www.twitter.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.githubIcon,
    ),
    darkIcon: Image.asset(
      Assets.githubIconWhite,
    ),
    link: "https://www.twitter.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.linkedinIcon,
    ),
    darkIcon: Image.asset(
      Assets.linkedinIcon,
    ),
    link: "https://www.twitter.com/",
  ),
];
