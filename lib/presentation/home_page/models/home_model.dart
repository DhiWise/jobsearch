import 'package:equatable/equatable.dart';
import 'listbag_item_model.dart';
import 'listsettings_item_model.dart';

// ignore: must_be_immutable
class HomeModel extends Equatable {
  HomeModel(
      {this.listbagItemList = const [], this.listsettingsItemList = const []});

  List<ListbagItemModel> listbagItemList;

  List<ListsettingsItemModel> listsettingsItemList;

  HomeModel copyWith(
      {List<ListbagItemModel>? listbagItemList,
      List<ListsettingsItemModel>? listsettingsItemList}) {
    return HomeModel(
      listbagItemList: listbagItemList ?? this.listbagItemList,
      listsettingsItemList: listsettingsItemList ?? this.listsettingsItemList,
    );
  }

  @override
  List<Object?> get props => [listbagItemList, listsettingsItemList];
}
