import 'package:azkary_app/features/home/data/models/option_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/app_colors.dart';
class ItemBody extends StatelessWidget {
  const ItemBody({super.key, required this.optionModel,});
  final OptionModel optionModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (c){
          return optionModel.detailWidget;
        }));
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.all(10),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Hero(
              tag: optionModel.title,
              child: Image.asset(
                  width: 130,
                  height: 130,
                  optionModel.image
              ),
            ),
            const SizedBox(height: 10,),
            Text(
                optionModel.title,
                style:
                const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  color: AppColors.green
                ),
            ),
          ],
        ),
      ),
    );
  }
}
