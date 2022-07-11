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
