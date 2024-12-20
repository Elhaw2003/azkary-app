import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({super.key, required this.count, required this.currentIndex, required this.azkars});
  final int count;
  final int currentIndex;
  final List azkars;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: CircularProgressIndicator(
            value: count/azkars[currentIndex-1].num,
            strokeWidth: 5,
            color: AppColors.blue,
            backgroundColor: AppColors.white,
          ),
        ),
        Text(
          "$count",
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}
