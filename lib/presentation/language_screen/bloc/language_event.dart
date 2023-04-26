// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent extends Equatable {}

class LanguageInitialEvent extends LanguageEvent {
  @override
  List<Object?> get props => [];
}

class ListenglishukItemEvent extends LanguageEvent {
  ListenglishukItemEvent({
    required this.index,
    this.isCheckbox,
  });

  int index;

  bool? isCheckbox;

  @override
  List<Object?> get props => [
        index,
        isCheckbox,
      ];
}
