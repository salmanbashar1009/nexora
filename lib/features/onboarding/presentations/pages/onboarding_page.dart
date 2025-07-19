import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_padding.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // padding: AppPadding.paddingHorizontal,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.onboardingBg),
          fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.black.withAlpha(990),
              Colors.transparent
            ])
          ),
          child: Column(
            children:[
              const SizedBox(height: 120,),
              Image.asset(AppImages.appLogo, width: 158, height: 116,),
              const SizedBox(height: 90,),
              Image.asset(AppImages.qrCode, width: 70, height: 70,),
              const SizedBox(height: 60,),
            ]
          ),
        )

      ),
    );
  }
}
