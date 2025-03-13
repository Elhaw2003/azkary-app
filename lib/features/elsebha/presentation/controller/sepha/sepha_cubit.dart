import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/utilities/app_texts.dart';
part 'sepha_state.dart';

class SephaCubit extends Cubit<SephaState> {
  SephaCubit() : super(SephaInitial());
  int counter = 0;
  String elzekr = AppTexts.ast;
  resetCounter(){
    counter = 0;
    emit(ResetCounter());
  }
  addCounter(){
    counter++;
    emit(UpdateCounter());
  }
  void changeElzekr(String elzekr) {
    this.elzekr = elzekr;
    counter =0;
      emit(UpdateText());
  }
}
