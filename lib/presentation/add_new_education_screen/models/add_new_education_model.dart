import 'package:equatable/equatable.dart';
import 'package:e_commerce_app/data/models/selectionPopupModel/selection_popup_model.dart';

// ignore: must_be_immutable
class AddNewEducationModel extends Equatable {
  AddNewEducationModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  AddNewEducationModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return AddNewEducationModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
