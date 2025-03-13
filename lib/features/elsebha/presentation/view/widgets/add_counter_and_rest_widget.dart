import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../controller/sepha/sepha_cubit.dart';
import 'circle_button_widget.dart';

class AddCounterAndRestWidget extends StatelessWidget {
  const AddCounterAndRestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 50,),
        CircleButtonWidget(
            iconData: Icons.add,
          onTap: (){
              BlocProvider.of<SephaCubit>(context).addCounter();
          },
        ),
        const SizedBox(width: 130,),
         CircleButtonWidget(
            iconData: Icons.restart_alt,
          onTap: (){
            BlocProvider.of<SephaCubit>(context).resetCounter();
          },
        )
      ],
    );
  }
}
