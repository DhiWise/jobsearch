// ignore_for_file: must_be_immutable

part of 'select_a_country_bloc.dart';

class SelectACountryState extends Equatable {
  SelectACountryState({
    this.searchController,
    this.radioGroup = "",
    this.selectACountryModelObj,
  });

  TextEditingController? searchController;

  SelectACountryModel? selectACountryModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        searchController,
        radioGroup,
        selectACountryModelObj,
      ];
  SelectACountryState copyWith({
    TextEditingController? searchController,
    String? radioGroup,
    SelectACountryModel? selectACountryModelObj,
  }) {
    return SelectACountryState(
      searchController: searchController ?? this.searchController,
      radioGroup: radioGroup ?? this.radioGroup,
      selectACountryModelObj:
          selectACountryModelObj ?? this.selectACountryModelObj,
    );
  }
}
