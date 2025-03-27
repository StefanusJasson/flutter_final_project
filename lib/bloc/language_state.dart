import 'package:equatable/equatable.dart';

class LanguageState extends Equatable {
  final String language;

  const LanguageState({
    this.language = 'Jp',
  });

  LanguageState copyWith({
    String? language,
  }) => LanguageState(
    language: language?? this.language
  );
  
  @override
  List<Object> get props => [
    language
  ];
}