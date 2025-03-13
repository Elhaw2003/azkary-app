import 'package:azkary_app/features/alquraan/data/models/quraan_model.dart';
import 'package:azkary_app/features/sora/view/widgets/show_date_and_number_sora_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_colors.dart';

class SoraBody extends StatelessWidget {
  const SoraBody({super.key, required this.quraanModel});
  final QuraanModel quraanModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            ShowDateAndNumberSoraWidget(quraanModel: quraanModel),
            const SizedBox(height: 30,),
            Text(
              quraanModel.displayqoran,
              style: const TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
