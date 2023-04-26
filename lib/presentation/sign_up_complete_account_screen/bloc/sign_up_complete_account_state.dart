// ignore_for_file: must_be_immutable

part of 'sign_up_complete_account_bloc.dart';

class SignUpCompleteAccountState extends Equatable {
  SignUpCompleteAccountState({
    this.firstnameController,
    this.lastnameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUpCompleteAccountModelObj,
  });

  TextEditingController? firstnameController;

  TextEditingController? lastnameController;
  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpCompleteAccountModel? signUpCompleteAccountModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        firstnameController,
        lastnameController,
        emailController,
        passwordController,
        isShowPassword,
        signUpCompleteAccountModelObj,
      ];

  SignUpCompleteAccountState copyWith({
    TextEditingController? firstnameController,
    TextEditingController? lastnameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUpCompleteAccountModel? signUpCompleteAccountModelObj,
  }) {
    return SignUpCompleteAccountState(
      firstnameController: firstnameController ?? this.firstnameController,
      lastnameController: lastnameController ?? this.lastnameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpCompleteAccountModelObj:
          signUpCompleteAccountModelObj ?? this.signUpCompleteAccountModelObj,
    );
  }
}
