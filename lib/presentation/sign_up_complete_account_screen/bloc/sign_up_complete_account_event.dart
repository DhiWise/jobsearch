// ignore_for_file: must_be_immutable

part of 'sign_up_complete_account_bloc.dart';

@immutable
abstract class SignUpCompleteAccountEvent extends Equatable {}

class SignUpCompleteAccountInitialEvent extends SignUpCompleteAccountEvent {
  @override
  List<Object?> get props => [];
}

class CreateRegisterEvent extends SignUpCompleteAccountEvent {
  CreateRegisterEvent({
    required this.onCreateRegisterEventSuccess,
    required this.onCreateRegisterEventError,
  });

  Function onCreateRegisterEventSuccess;

  Function onCreateRegisterEventError;

  @override
  List<Object?> get props => [
        onCreateRegisterEventSuccess,
        onCreateRegisterEventError,
      ];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignUpCompleteAccountEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
