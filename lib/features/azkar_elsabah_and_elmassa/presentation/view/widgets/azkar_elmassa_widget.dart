import 'package:azkary_app/features/azkar_elsabah_and_elmassa/data/lists/azkar_elsabah_and_elmassa_list.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/azkar_body.dart';
import 'package:flutter/material.dart';

class AzkarElmassaWidget extends StatelessWidget {
  const AzkarElmassaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AzkarBody(azkars: AzkarElsabahAndElmassaList.azkarElmasaaList);
  }
}
