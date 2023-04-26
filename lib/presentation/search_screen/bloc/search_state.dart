// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

class SearchState extends Equatable {
  SearchState({this.searchModelObj});

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        searchModelObj,
      ];
  SearchState copyWith({SearchModel? searchModelObj}) {
    return SearchState(
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
