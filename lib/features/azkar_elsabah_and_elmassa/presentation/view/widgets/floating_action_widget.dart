import 'package:azkary_app/core/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({super.key, required this.floatColor, required this.icon, this.onPressed});
  final Color floatColor;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: AppColors.white,
      backgroundColor: floatColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        onPressed: onPressed,
      child:  icon
    );
  }
}
