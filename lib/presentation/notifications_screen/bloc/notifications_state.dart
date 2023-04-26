// ignore_for_file: must_be_immutable

part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {
  NotificationsState({this.notificationsModelObj});

  NotificationsModel? notificationsModelObj;

  @override
  List<Object?> get props => [
        notificationsModelObj,
      ];
  NotificationsState copyWith({NotificationsModel? notificationsModelObj}) {
    return NotificationsState(
      notificationsModelObj:
          notificationsModelObj ?? this.notificationsModelObj,
    );
  }
}
