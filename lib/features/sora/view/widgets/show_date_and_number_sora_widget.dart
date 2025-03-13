import 'package:azkary_app/features/alquraan/data/models/quraan_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_colors.dart';
import '../../../../core/utilities/app_text_styles.dart';
import '../../../../core/utilities/app_texts.dart';

class ShowDateAndNumberSoraWidget extends StatelessWidget {
  const ShowDateAndNumberSoraWidget({super.key, required this.quraanModel});
  final QuraanModel quraanModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: AppColors.black
          ),
        ),
        Text("${AppTexts.alayat} :  ${quraanModel.ayat}",style: AppTextStyle.blackS20W800),
        CircleAvatar(
            backgroundColor: AppColors.green,
            radius: 25,
            child: Text(
              quraanModel.index.toString(),
              style: const TextStyle(color: AppColors.white,fontSize: 20),
            )
        ),
      ],
    );
  }
}
