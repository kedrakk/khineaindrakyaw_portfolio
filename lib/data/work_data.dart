import 'package:kedk_portfolio/const/const.dart';

class WorkData {
  String projectTitle;
  String imageURL;
  String? playStoreURL;
  String? figmaURL;
  String? githubURL;
  String? caseStudyTitle;

  WorkData({
    required this.projectTitle,
    required this.imageURL,
    this.playStoreURL,
    this.figmaURL,
    this.githubURL,
    this.caseStudyTitle,
  });
}

final List<WorkData> works = [
  WorkData(
    projectTitle: "My QR",
    imageURL: Assets.qrscanImage,
    playStoreURL: "https://play.google.com/store/apps/details?id=com.qrscanner",
    figmaURL:
        "https://www.figma.com/file/qrscanner.qrscanner/QR-Scanner?node-id=0%3A1",
    githubURL: "",
  ),
];
