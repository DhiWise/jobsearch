import 'package:equatable/equatable.dart';
import 'listenglishuk_item_model.dart';
import 'listchineses_item_model.dart';

// ignore: must_be_immutable
class LanguageModel extends Equatable {
  LanguageModel(
      {this.listenglishukItemList = const [],
      this.listchinesesItemList = const []});

  List<ListenglishukItemModel> listenglishukItemList;

  List<ListchinesesItemModel> listchinesesItemList;

  LanguageModel copyWith(
      {List<ListenglishukItemModel>? listenglishukItemList,
      List<ListchinesesItemModel>? listchinesesItemList}) {
    return LanguageModel(
      listenglishukItemList:
          listenglishukItemList ?? this.listenglishukItemList,
      listchinesesItemList: listchinesesItemList ?? this.listchinesesItemList,
    );
  }

  @override
  List<Object?> get props => [listenglishukItemList, listchinesesItemList];
}
