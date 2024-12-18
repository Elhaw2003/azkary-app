import 'package:azkary_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
        icon:const Icon(Icons.arrow_back_ios_new_outlined),
      ),
     backgroundColor: AppColors.grey,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}
