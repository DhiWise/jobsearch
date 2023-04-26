// ignore_for_file: must_be_immutable

part of 'home_container_bloc.dart';

class HomeContainerState extends Equatable {
  HomeContainerState({this.homeContainerModelObj});

  HomeContainerModel? homeContainerModelObj;

  @override
  List<Object?> get props => [
        homeContainerModelObj,
      ];
  HomeContainerState copyWith({HomeContainerModel? homeContainerModelObj}) {
    return HomeContainerState(
      homeContainerModelObj:
          homeContainerModelObj ?? this.homeContainerModelObj,
    );
  }
}
