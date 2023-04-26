// ignore_for_file: must_be_immutable

part of 'personal_info_bloc.dart';

@immutable
abstract class PersonalInfoEvent extends Equatable {}

class PersonalInfoInitialEvent extends PersonalInfoEvent {
  @override
  List<Object?> get props => [];
}

class UpdateUpdateProfileEvent extends PersonalInfoEvent {
  UpdateUpdateProfileEvent({
    required this.onUpdateUpdateProfileEventSuccess,
    required this.onUpdateUpdateProfileEventError,
  });

  Function onUpdateUpdateProfileEventSuccess;

  Function onUpdateUpdateProfileEventError;

  @override
  List<Object?> get props => [
        onUpdateUpdateProfileEventSuccess,
        onUpdateUpdateProfileEventError,
      ];
}
