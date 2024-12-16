import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_texts.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.green,
      centerTitle: true,
      title: const Text(
        AppTexts.mainHome,
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
    );
  }
}
