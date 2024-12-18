import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/azkar_elsabah_and_elmassa_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';

class AkkarElsabahElmassaScreen extends StatelessWidget {
  const AkkarElsabahElmassaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppbar(title: AppTexts.azkarElsabahAndElmassa,),
      ),
      body:  AzkarElsabahAndElmassaBody(),
    );
  }
}
