import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class SelectACountryModel extends Equatable {
  SelectACountryModel({this.radioList = const []});

  List<String> radioList;

  SelectACountryModel copyWith({List<String>? radioList}) {
    return SelectACountryModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
