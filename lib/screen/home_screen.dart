import 'package:contact/screen/pageTwo.dart';
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
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    builder: (context) {
                      return userForm(context);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget userForm(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.7,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.gold),
              ),
              child: const Icon(
                Icons.image,
                size: 50,
                color: AppColors.gold,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Text("User Name", style: AppStyles.goldMedium16),
          const SizedBox(height: 8),
          _buildTextField("Enter User Name"),

          const SizedBox(height: 16),

          Text("Email", style: AppStyles.goldMedium16),
          const SizedBox(height: 8),
          _buildTextField("Enter User Email"),

          const SizedBox(height: 16),


          Text("Phone", style: AppStyles.goldMedium16),
          const SizedBox(height: 8),
          _buildTextField("Enter User Phone"),
          SizedBox(height: 80,),

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagetwo()),
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppColors.lightBlue,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text("Enter User",
                textAlign: TextAlign.center,
                style: AppStyles.darkBlueRegular20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTextField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gold),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        style: AppStyles.darkBlueRegular20.copyWith(
          color: AppColors.lightBlue,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.lightBlueRegular16,
          border: InputBorder.none,
        ),
      ),
    );
  }
  
}
