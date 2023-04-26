import 'package:equatable/equatable.dart';
import 'listfavorite_item_model.dart';

// ignore: must_be_immutable
class NotificationsMyProposalsModel extends Equatable {
  NotificationsMyProposalsModel({this.listfavoriteItemList = const []});

  List<ListfavoriteItemModel> listfavoriteItemList;

  NotificationsMyProposalsModel copyWith(
      {List<ListfavoriteItemModel>? listfavoriteItemList}) {
    return NotificationsMyProposalsModel(
      listfavoriteItemList: listfavoriteItemList ?? this.listfavoriteItemList,
    );
  }

  @override
  List<Object?> get props => [listfavoriteItemList];
}
