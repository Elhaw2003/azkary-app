import 'package:azkary_app/core/utilities/app_colors.dart';
import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/features/home/presentation/view/widgets/home_appbar.dart';
import 'package:azkary_app/features/home/presentation/view/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.white.withOpacity(0.899),
        appBar:AppBar(
          flexibleSpace: const HomeAppbar(),
        ),
        body:  HomeBody(),
      ),
    );
  }
}
