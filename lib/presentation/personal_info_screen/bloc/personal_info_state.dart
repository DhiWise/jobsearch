// ignore_for_file: must_be_immutable

part of 'personal_info_bloc.dart';

class PersonalInfoState extends Equatable {
  PersonalInfoState({
    this.firstnameController,
    this.lastnameController,
    this.emailController,
    this.mobilenoController,
    this.locationController,
    this.personalInfoModelObj,
  });

  TextEditingController? firstnameController;

  TextEditingController? lastnameController;

  TextEditingController? emailController;

  TextEditingController? mobilenoController;

  TextEditingController? locationController;

  PersonalInfoModel? personalInfoModelObj;

  @override
  List<Object?> get props => [
        firstnameController,
        lastnameController,
        emailController,
        mobilenoController,
        locationController,
        personalInfoModelObj,
      ];
  PersonalInfoState copyWith({
    TextEditingController? firstnameController,
    TextEditingController? lastnameController,
    TextEditingController? emailController,
    TextEditingController? mobilenoController,
    TextEditingController? locationController,
    PersonalInfoModel? personalInfoModelObj,
  }) {
    return PersonalInfoState(
      firstnameController: firstnameController ?? this.firstnameController,
      lastnameController: lastnameController ?? this.lastnameController,
      emailController: emailController ?? this.emailController,
      mobilenoController: mobilenoController ?? this.mobilenoController,
      locationController: locationController ?? this.locationController,
      personalInfoModelObj: personalInfoModelObj ?? this.personalInfoModelObj,
    );
  }
}
