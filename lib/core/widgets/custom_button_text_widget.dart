import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';
import '../utilities/app_text_styles.dart';
class CustomButtonTextWidget extends StatelessWidget {
  const CustomButtonTextWidget({super.key, this.onPressed, required this.text,});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
                height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.purple
        ),
        child: Text(text,style: AppTextStyle.blackS20W800.copyWith(color: AppColors.white),),
      ),
    );
  }
}
