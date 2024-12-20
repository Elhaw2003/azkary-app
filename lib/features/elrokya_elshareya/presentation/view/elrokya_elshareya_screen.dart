import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/core/widgets/custom_appbar.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/azkar_body.dart';
import 'package:azkary_app/features/elrokya_elshareya/data/lists/elrokya_elshareya_list.dart';
import 'package:flutter/material.dart';

class ElrokyaElshareyaScreen extends StatelessWidget {
  const ElrokyaElshareyaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppbar(title: AppTexts.elroqyaElshareya),
      ),
      body: AzkarBody(
        azkars: ElrokyaElshareyaList.elrokyaElshareyaList,
      ),
    );
  }
}
