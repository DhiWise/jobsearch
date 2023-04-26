// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState({
    this.isCheckbox = false,
    this.profileModelObj,
  });

  ProfileModel? profileModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        isCheckbox,
        profileModelObj,
      ];
  ProfileState copyWith({
    bool? isCheckbox,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
