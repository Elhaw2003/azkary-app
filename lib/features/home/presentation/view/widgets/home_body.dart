import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/features/elrokya_elshareya/presentation/view/elrokya_elshareya_screen.dart';
import 'package:azkary_app/features/elsebha/presentation/view/elsebha_screen.dart';
import 'package:azkary_app/features/home/data/models/option_model.dart';
import 'package:azkary_app/features/home/presentation/view/widgets/item_body.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../../azkar_elsabah_and_elmassa/presentation/view/akkar_elsabah_elmassa_screen.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  List<OptionModel> options = [
    OptionModel(
        image: Assets.imagesAzkarElsabahAndElmassa,
        title: AppTexts.azkarElsabahAndElmassa,
        detailWidget: const AkkarElsabahElmassaScreen()
    ),
    OptionModel(
        image: Assets.imagesElroqyaElshareya,
        title: AppTexts.elroqyaElshareya,
       detailWidget:  const ElrokyaElshareyaScreen(),
    ),
    OptionModel(
        image: Assets.imagesElsebha,
        title: AppTexts.elsebha,
        detailWidget: const ElsebhaScreen()
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      ...options.map((optionModel) {
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: ItemBody(
              optionModel: optionModel,
          ),
        );
      }),
    ]);
  }
}
