import 'package:equatable/equatable.dart';
import 'listwallet1_item_model.dart';
import 'listdescription1_item_model.dart';

// ignore: must_be_immutable
class SavedDetailJobModel extends Equatable {
  SavedDetailJobModel(
      {this.listwallet1ItemList = const [],
      this.listdescription1ItemList = const []});

  List<Listwallet1ItemModel> listwallet1ItemList;

  List<Listdescription1ItemModel> listdescription1ItemList;

  SavedDetailJobModel copyWith(
      {List<Listwallet1ItemModel>? listwallet1ItemList,
      List<Listdescription1ItemModel>? listdescription1ItemList}) {
    return SavedDetailJobModel(
      listwallet1ItemList: listwallet1ItemList ?? this.listwallet1ItemList,
      listdescription1ItemList:
          listdescription1ItemList ?? this.listdescription1ItemList,
    );
  }

  @override
  List<Object?> get props => [listwallet1ItemList, listdescription1ItemList];
}
