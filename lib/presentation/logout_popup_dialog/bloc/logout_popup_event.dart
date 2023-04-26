// ignore_for_file: must_be_immutable

part of 'logout_popup_bloc.dart';

@immutable
abstract class LogoutPopupEvent extends Equatable {}

class LogoutPopupInitialEvent extends LogoutPopupEvent {
  @override
  List<Object?> get props => [];
}
