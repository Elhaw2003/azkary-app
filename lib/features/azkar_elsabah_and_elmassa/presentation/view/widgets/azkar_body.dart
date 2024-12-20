import 'package:azkary_app/core/data/custom_models/item_zekr_model.dart';
import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/core/widgets/custom_date_widget.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/zekr_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
import '../../../data/lists/azkar_elsabah_and_elmassa_list.dart';

class AzkarBody extends StatelessWidget {
  const AzkarBody({super.key, required this.azkars});
  final List<ItemZekrModel> azkars;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const CustomDateWidget(),
          const SizedBox(height: 25,),
          ZekrItem(
            azkars: azkars,
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
