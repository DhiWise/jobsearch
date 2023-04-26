// ignore_for_file: must_be_immutable

part of 'notifications_bloc.dart';

@immutable
abstract class NotificationsEvent extends Equatable {}

class NotificationsInitialEvent extends NotificationsEvent {
  @override
  List<Object?> get props => [];
}

class NotificationsItemEvent extends NotificationsEvent {
  NotificationsItemEvent({
    required this.index,
    this.isSelectedSwitch,
  });

  int index;

  bool? isSelectedSwitch;

  @override
  List<Object?> get props => [
        index,
        isSelectedSwitch,
      ];
}
