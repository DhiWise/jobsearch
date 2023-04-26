// ignore_for_file: must_be_immutable

part of 'notifications_general_bloc.dart';

@immutable
abstract class NotificationsGeneralEvent extends Equatable {}

class NotificationsGeneralInitialEvent extends NotificationsGeneralEvent {
  @override
  List<Object?> get props => [];
}
