import 'package:azkary_app/core/utilities/app_text_styles.dart';
import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/core/widgets/custom_appbar.dart';
import 'package:azkary_app/core/widgets/custom_date_widget.dart';
import 'package:azkary_app/features/alquraan/data/models/quraan_model.dart';
import 'package:azkary_app/features/sora/view/widgets/sora_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';

class SoraScreen extends StatelessWidget {
  const SoraScreen({super.key, required this.quraanModel});
  final QuraanModel quraanModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: CustomAppbar(title:quraanModel.name),
      ),
      body: SoraBody(quraanModel: quraanModel),
    );
  }
}
