import 'package:azkary_app/core/data/custom_models/item_zekr_model.dart';
import 'package:azkary_app/core/utilities/app_colors.dart';
import 'package:azkary_app/features/azkar_elsabah_and_elmassa/presentation/view/widgets/floating_action_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/lists/azkar_elsabah_and_elmassa_list.dart';

class ZekrItem extends StatefulWidget {
   ZekrItem({super.key,required this.azkars});
    final List<ItemZekrModel> azkars ;

  @override
  State<ZekrItem> createState() => _ZekrItemState();
}

class _ZekrItemState extends State<ZekrItem> {
    int currentIndex = 1;
    int count = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.black, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: AppColors.grey.withOpacity(0.17)),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                   Row(
                    children: [
                      Text(
                        "$currentIndex/${widget.azkars.length}",
                        style: const TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: AppColors.grey,
                        foregroundColor: AppColors.black,
                        child: Text(
                            "$count",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    style: const TextStyle(
                        color: AppColors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20
                    ),
                    textAlign: TextAlign.center,
                      widget.azkars[currentIndex-1].text
                  ),
                ],
              ),
            ),
          ),
            Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionWidget(
              onPressed: (){
                if(currentIndex>1){
                  currentIndex--;
                  setState(() {});
                }
              },
              floatColor: AppColors.purple,
              icon: const Icon(Icons.arrow_back_ios_new_outlined
              ),
            ),
          ),
           Positioned(
            right: 20,
              bottom: 20,
              child: FloatingActionWidget(
                onPressed: (){
                  if(currentIndex<widget.azkars.length){
                    currentIndex++;
                    setState(() {});
                  }
                },
                floatColor: AppColors.purple,
                icon: const Icon(
                    Icons.arrow_forward_ios_sharp
              ),
          ),
          ),
        ],
      ),
    );
  }
}
