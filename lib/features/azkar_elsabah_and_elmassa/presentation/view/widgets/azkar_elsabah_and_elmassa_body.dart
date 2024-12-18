import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/core/widgets/custom_date_widget.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/zekr_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../data/lists/azkar_elsabah_and_elmassa_list.dart';

class AzkarElsabahAndElmassaBody extends StatelessWidget {
  const AzkarElsabahAndElmassaBody({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const Row(
            children: [
              Expanded(
                child: Text(
                    AppTexts.azkarElsabah,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Expanded(
                child: Text(
                    AppTexts.azkarElmassa,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          const CustomDateWidget(),
          const SizedBox(height: 25,),
          ZekrItem(
            azkars: AzkarElsabahAndElmassaList.azkarElsabahList,
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}