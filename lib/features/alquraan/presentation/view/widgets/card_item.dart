import 'package:azkary_app/features/alquraan/data/models/quraan_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_text_styles.dart';
import '../../../../sora/view/sora_screen.dart';
import '../../../data/lists/quraan_list.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.quraanModel});
  final QuraanModel quraanModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (c){
          return SoraScreen(quraanModel: quraanModel);
        }));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back_ios_new,),
              Text(
                quraanModel.name,
                style: AppTextStyle.blackS20W800,
              )
            ],
          ),
        ),
      ),
    );
  }
}
