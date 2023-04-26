import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ChipviewjobsItemModel extends Equatable {
  ChipviewjobsItemModel(
      {this.jobsoneTxt = "Part Time", this.isSelected = false});

  String jobsoneTxt;

  bool isSelected;

  ChipviewjobsItemModel copyWith({String? jobsoneTxt, bool? isSelected}) {
    return ChipviewjobsItemModel(
      jobsoneTxt: jobsoneTxt ?? this.jobsoneTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [jobsoneTxt, isSelected];
}
