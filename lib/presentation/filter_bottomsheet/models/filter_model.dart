import 'package:equatable/equatable.dart';
import 'chipviewjobs_item_model.dart';

// ignore: must_be_immutable
class FilterModel extends Equatable {
  FilterModel({this.chipviewjobsItemList = const []});

  List<ChipviewjobsItemModel> chipviewjobsItemList;

  FilterModel copyWith({List<ChipviewjobsItemModel>? chipviewjobsItemList}) {
    return FilterModel(
      chipviewjobsItemList: chipviewjobsItemList ?? this.chipviewjobsItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewjobsItemList];
}
