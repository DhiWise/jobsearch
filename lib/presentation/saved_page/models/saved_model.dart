import 'package:equatable/equatable.dart';
import 'saved_item_model.dart';

// ignore: must_be_immutable
class SavedModel extends Equatable {
  SavedModel({this.savedItemList = const []});

  List<SavedItemModel> savedItemList;

  SavedModel copyWith({List<SavedItemModel>? savedItemList}) {
    return SavedModel(
      savedItemList: savedItemList ?? this.savedItemList,
    );
  }

  @override
  List<Object?> get props => [savedItemList];
}
