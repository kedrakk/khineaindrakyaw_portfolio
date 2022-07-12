import 'package:kedk_portfolio/const/const.dart';

class SkillData {
  String asset;
  String title;

  SkillData({required this.asset, required this.title});
}

final List<SkillData> programmingLanguages = [
  SkillData(
    asset: Assets.dartImage,
    title: "DART",
  ),
  SkillData(
    asset: Assets.phpImage,
    title: "PHP",
  ),
  SkillData(
    asset: Assets.csharpImage,
    title: "C#",
  ),
  SkillData(
    asset: Assets.kotlinImage,
    title: "KOTLIN (Beginner)",
  ),
];

final List<SkillData> webDevelopment = [
  SkillData(
    asset: Assets.htmlIMage,
    title: "HTML",
  ),
  SkillData(
    asset: Assets.cssImage,
    title: "CSS",
  ),
  SkillData(
    asset: Assets.javascriptImage,
    title: "JAVASCRIPT",
  ),
  SkillData(
    asset: Assets.jqueryImage,
    title: "JQUERY",
  ),
];

final List<SkillData> database = [
  SkillData(
    asset: Assets.mysqlImage,
    title: "MySQL",
  ),
  SkillData(
    asset: Assets.mssqlImage,
    title: "MS-SQL",
  ),
];

final List<SkillData> frameWorks = [
  SkillData(
    asset: Assets.flutterImage,
    title: "FLUTTER",
  ),
  SkillData(
    asset: Assets.laravelImage,
    title: "LARAVEL",
  ),
  SkillData(
    asset: Assets.bootstrapImage,
    title: "BOOTSTRAP",
  ),
  SkillData(
    asset: Assets.figmaImage,
    title: "FIGMA",
  ),
];
