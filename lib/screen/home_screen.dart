import 'package:contact/utils/app_assets.dart';
import 'package:contact/utils/app_colors.dart';
import 'package:contact/utils/app_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAsset.squares),
                const SizedBox(height: 16),
                Text(
                  'There is No Contacts Added Here',
                  style: AppStyles.goldMedium20,
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.gold,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                icon: const Icon(Icons.add),
                color: AppColors.darkBlue,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
