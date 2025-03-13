import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../../../core/utilities/app_text_styles.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.black)
      ),
      child: Text(text,style: AppTextStyle.blackS20W800,),
    );
  }
}
