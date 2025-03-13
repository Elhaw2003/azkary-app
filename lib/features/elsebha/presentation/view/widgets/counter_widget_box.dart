import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_styles.dart';

class CounterWidgetBox extends StatelessWidget {
  const CounterWidgetBox({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration:  const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.grey,
      ),
      child: Text(text,
        style: AppTextStyle.blackS20W800.copyWith(color: AppColors.white,fontSize: 30),),
    );
  }
}
