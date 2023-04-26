// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.emailController,
    this.passwordController,
    this.loginModelObj,
    this.isShowPassword = false,
  });

  TextEditingController? emailController;
  TextEditingController? passwordController;

  LoginModel? loginModelObj;
  bool isShowPassword;
  @override
  List<Object?> get props => [
        emailController,
    passwordController,
        loginModelObj,
    isShowPassword,
      ];
  LoginState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    LoginModel? loginModelObj,
    bool? isShowPassword,
  }) {
    return LoginState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
      isShowPassword: isShowPassword ?? this.isShowPassword,
    );
  }
}
