import 'package:equatable/equatable.dart';
import 'listbag1_item_model.dart';

// ignore: must_be_immutable
class NotificationsGeneralModel extends Equatable {
  NotificationsGeneralModel({this.listbag1ItemList = const []});

  List<Listbag1ItemModel> listbag1ItemList;

  NotificationsGeneralModel copyWith(
      {List<Listbag1ItemModel>? listbag1ItemList}) {
    return NotificationsGeneralModel(
      listbag1ItemList: listbag1ItemList ?? this.listbag1ItemList,
    );
  }

  @override
  List<Object?> get props => [listbag1ItemList];
}
