// ignore_for_file: must_be_immutable

part of 'select_a_country_bloc.dart';

@immutable
abstract class SelectACountryEvent extends Equatable {}

class SelectACountryInitialEvent extends SelectACountryEvent {
  @override
  List<Object?> get props => [];
}

///event for change radio button
class ChangeRadioButtonEvent extends SelectACountryEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
