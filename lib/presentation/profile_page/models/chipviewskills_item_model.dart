import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ChipviewskillsItemModel extends Equatable {
  ChipviewskillsItemModel(
      {this.skillsoneTxt = "Design & Creative", this.isSelected = false});

  String skillsoneTxt;

  bool isSelected;

  ChipviewskillsItemModel copyWith({String? skillsoneTxt, bool? isSelected}) {
    return ChipviewskillsItemModel(
      skillsoneTxt: skillsoneTxt ?? this.skillsoneTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [skillsoneTxt, isSelected];
}
