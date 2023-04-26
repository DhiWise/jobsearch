// ignore_for_file: must_be_immutable

part of 'add_new_education_bloc.dart';

@immutable
abstract class AddNewEducationEvent extends Equatable {}

class AddNewEducationInitialEvent extends AddNewEducationEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AddNewEducationEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
