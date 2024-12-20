import 'package:azkary_app/core/utilities/app_texts.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/azkar_elmassa_widget.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/azkar_elsabah_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utilities/app_colors.dart';
import '../../../../core/widgets/custom_appbar.dart';

class AkkarElsabahElmassaScreen extends StatefulWidget {
   const AkkarElsabahElmassaScreen({super.key});

  @override
  State<AkkarElsabahElmassaScreen> createState() => _AkkarElsabahElmassaScreenState();
}

class _AkkarElsabahElmassaScreenState extends State<AkkarElsabahElmassaScreen> {
 List<Widget> azkarsList = [const AzkarElsabahWidget(),const AzkarElmassaWidget()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: index,
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          bottom:     const TabBar(
            unselectedLabelColor: AppColors.green,
            labelStyle: TextStyle(
                color: AppColors.green,
                fontSize: 20,
                fontWeight: FontWeight.w900
            ),
            unselectedLabelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
            ),
            dividerColor: AppColors.white,
              dividerHeight: 50,
              indicatorColor: AppColors.green,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2,
              tabs: [
                Tab(
                  child: Text(
                    AppTexts.azkarElsabah,
                  ),
                ),
                Tab(
                  child: Text(
                    AppTexts.azkarElmassa,
                  ),
                ),
              ],
          ),
          automaticallyImplyLeading: false,
          flexibleSpace: const CustomAppbar(title: AppTexts.azkarElsabahAndElmassa,),
        ),
        body: const TabBarView(
            children: [
              AzkarElsabahWidget(),
              AzkarElmassaWidget()
        ]),
      ),
    );
  }
}
