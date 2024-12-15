import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: JelloIn(
        duration: const Duration(seconds: 3),
        child: Image.asset(
            Assets.imagesLogoAzkary,
          width: MediaQuery.of(context).size.width*0.6,
          height: MediaQuery.of(context).size.width*0.6,
        ),
      ),
    );
  }
}
