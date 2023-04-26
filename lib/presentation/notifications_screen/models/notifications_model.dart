import 'package:equatable/equatable.dart';
import 'notifications_item_model.dart';

// ignore: must_be_immutable
class NotificationsModel extends Equatable {
  NotificationsModel({this.notificationsItemList = const []});

  List<NotificationsItemModel> notificationsItemList;

  NotificationsModel copyWith(
      {List<NotificationsItemModel>? notificationsItemList}) {
    return NotificationsModel(
      notificationsItemList:
          notificationsItemList ?? this.notificationsItemList,
    );
  }

  @override
  List<Object?> get props => [notificationsItemList];
}
