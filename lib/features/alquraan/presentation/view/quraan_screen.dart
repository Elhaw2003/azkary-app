import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/core/widgets/custom_appbar.dart';
import 'package:azkary_app/features/alquraan/presentation/view/widgets/quraan_body.dart';
import 'package:flutter/material.dart';

class QuraanScreen extends StatelessWidget {
  const QuraanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppbar(title: AppTexts.alquraan),
      ),
      body: const QuraanBody(),
    );
  }
}
