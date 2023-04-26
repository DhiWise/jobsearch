import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class NotificationsItemModel extends Equatable {
  NotificationsItemModel(
      {this.newpostTxt = "New Post", this.isSelectedSwitch = false, this.id});

  String newpostTxt;

  bool isSelectedSwitch;

  String? id;

  NotificationsItemModel copyWith(
      {String? newpostTxt, bool? isSelectedSwitch, String? id}) {
    return NotificationsItemModel(
      newpostTxt: newpostTxt ?? this.newpostTxt,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [newpostTxt, isSelectedSwitch, id];
}
