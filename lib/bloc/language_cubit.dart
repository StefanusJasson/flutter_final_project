import 'package:bloc/bloc.dart';
import 'package:flutter_final_project/bloc/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit(): super(LanguageState());

  void setDisplayLanguage(String language){
    emit(state.copyWith(
      language: language
    ));
  }
}