import 'package:flutter/material.dart';
import 'package:jhijri/_src/_jHijri.dart';

import '../utilities/app_colors.dart';

class CustomDateWidget extends StatelessWidget {
  const CustomDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    JHijri jHijri = JHijri.now();
    DateTime dateTime = DateTime.now();
    return Row(
      children: [
        Text(
            "${dateTime.day}/${dateTime.month}/${dateTime.year}",
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: AppColors.black
            ),
        ),
        const Spacer(),
        Text(
            jHijri.dayName,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: AppColors.black
          ),
        ),
        const Spacer(),
        Text(
            "${jHijri.day}/${jHijri.month}/${jHijri.year}",
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: AppColors.black
          ),
        ),
      ],
    );
  }
}
