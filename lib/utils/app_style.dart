import 'package:contact/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract final class AppStyles {
  static const TextStyle goldMedium16 = TextStyle(
    color: AppColors.gold,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle lightBlueRegular16 = TextStyle(
    color: AppColors.lightBlue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle goldMedium20 = TextStyle(
    color: AppColors.gold,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle darkBlueRegular20 = TextStyle(
    color: AppColors.darkBlue,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
}
