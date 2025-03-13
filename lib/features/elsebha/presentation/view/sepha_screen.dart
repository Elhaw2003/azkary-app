import 'package:azkary_app/core/utilities/app_colors.dart';
import 'package:azkary_app/core/widgets/custom_appbar.dart';
import 'package:azkary_app/features/elsebha/presentation/view/widgets/sepha_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utilities/app_texts.dart';
import '../controller/sepha/sepha_cubit.dart';

class SephaScreen extends StatelessWidget {
  const SephaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SephaCubit(),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
         flexibleSpace: const CustomAppbar(title: AppTexts.elsebha),
        ),
        body: const SephaBody(),
      ),
    );
  }
}
