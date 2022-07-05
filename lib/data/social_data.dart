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
      filterQuality: FilterQuality.high,
    ),
    darkIcon: Image.asset(
      Assets.twitterIcon,
      filterQuality: FilterQuality.high,
    ),
    link: "https://www.twitter.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.devIcon,
      filterQuality: FilterQuality.high,
    ),
    darkIcon: Image.asset(
      Assets.devIconWhite,
      filterQuality: FilterQuality.high,
    ),
    link: "https://www.twitter.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.githubIcon,
      filterQuality: FilterQuality.high,
    ),
    darkIcon: Image.asset(
      Assets.githubIconWhite,
      filterQuality: FilterQuality.high,
    ),
    link: "https://www.twitter.com/",
  ),
  SocialData(
    lightIcon: Image.asset(
      Assets.linkedinIcon,
      filterQuality: FilterQuality.high,
    ),
    darkIcon: Image.asset(
      Assets.linkedinIcon,
      filterQuality: FilterQuality.high,
    ),
    link: "https://www.twitter.com/",
  ),
];
