import 'package:azkary_app/features/alquraan/presentation/view/widgets/card_item.dart';
import 'package:flutter/material.dart';

import '../../../data/lists/quraan_list.dart';

class QuraanBody extends StatelessWidget {
  const QuraanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 15,),
            itemCount: QuraanList.quraanLits.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CardItem(quraanModel: QuraanList.quraanLits[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
