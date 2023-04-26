import 'package:equatable/equatable.dart';
import 'listwallet_item_model.dart';
import 'listdescription_item_model.dart';

// ignore: must_be_immutable
class JobDetailsModel extends Equatable {
  JobDetailsModel(
      {this.listwalletItemList = const [],
      this.listdescriptionItemList = const []});

  List<ListwalletItemModel> listwalletItemList;

  List<ListdescriptionItemModel> listdescriptionItemList;

  JobDetailsModel copyWith(
      {List<ListwalletItemModel>? listwalletItemList,
      List<ListdescriptionItemModel>? listdescriptionItemList}) {
    return JobDetailsModel(
      listwalletItemList: listwalletItemList ?? this.listwalletItemList,
      listdescriptionItemList:
          listdescriptionItemList ?? this.listdescriptionItemList,
    );
  }

  @override
  List<Object?> get props => [listwalletItemList, listdescriptionItemList];
}
