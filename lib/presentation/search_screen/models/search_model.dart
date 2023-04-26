import 'package:equatable/equatable.dart';
import 'search_item_model.dart';

// ignore: must_be_immutable
class SearchModel extends Equatable {
  SearchModel({this.searchItemList = const []});

  List<SearchItemModel> searchItemList;

  SearchModel copyWith({List<SearchItemModel>? searchItemList}) {
    return SearchModel(
      searchItemList: searchItemList ?? this.searchItemList,
    );
  }

  @override
  List<Object?> get props => [searchItemList];
}
