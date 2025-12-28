import 'package:contact/utils/app_assets.dart';
import 'package:contact/utils/app_colors.dart';
import 'package:contact/utils/app_style.dart';
import 'package:flutter/material.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      body: Stack(
        children: [
          // LIST VIEW
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.separated(
              itemCount: 10,
              separatorBuilder: (BuildContext, _) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                return _buildUserItem();
              },
            ),
          ),

          // DELETE الثابت تحت يمين
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                icon: const Icon(Icons.delete, color: Colors.white),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserItem() {
    return SizedBox(
      height: 180,
      child: Row(
        children: [
          // الصورة الشخصية (حط الصورة هنا)
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 140,
                  height: 140,

                  child: Image.asset(
                    AppAsset.abdo,
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),

                  // أو
                ),
              ),

              // الاسم في الأعلى يسار الصورة
              Positioned(
                top: 90,
                left: 10,

                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.gold,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "El-balf",
                    style: AppStyles
                        .darkBlueRegular20, // غير اللون/الستايل حسب رغبتك
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),

                const Text("El-balf", style: AppStyles.goldMedium16),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Icon(Icons.email, size: 20),
                    const SizedBox(width: 6),
                    Expanded(
                      child: const Text(
                        "leomessi.route@gmail.com",

                        style: AppStyles.darkBlueRegular20,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // رقم التليفون
                Row(
                  children: [
                    const Icon(Icons.phone, size: 20),
                    const SizedBox(width: 6),
                    const Text(
                      "+2000000000000",
                      style: AppStyles.darkBlueRegular20,
                    ),
                  ],
                ),

                const Spacer(),

                // زرار الحذف (Delete)
                Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
