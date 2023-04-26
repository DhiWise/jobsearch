import 'package:equatable/equatable.dart';
import 'listwallet2_item_model.dart';
import 'listdescription2_item_model.dart';

// ignore: must_be_immutable
class AppliedJobModel extends Equatable {
  AppliedJobModel(
      {this.listwallet2ItemList = const [],
      this.listdescription2ItemList = const []});

  List<Listwallet2ItemModel> listwallet2ItemList;

  List<Listdescription2ItemModel> listdescription2ItemList;

  AppliedJobModel copyWith(
      {List<Listwallet2ItemModel>? listwallet2ItemList,
      List<Listdescription2ItemModel>? listdescription2ItemList}) {
    return AppliedJobModel(
      listwallet2ItemList: listwallet2ItemList ?? this.listwallet2ItemList,
      listdescription2ItemList:
          listdescription2ItemList ?? this.listdescription2ItemList,
    );
  }

  @override
  List<Object?> get props => [listwallet2ItemList, listdescription2ItemList];
}
