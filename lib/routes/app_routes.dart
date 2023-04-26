import 'package:flutter/material.dart';
import 'package:e_commerce_app/presentation/splash_screen/splash_screen.dart';
import 'package:e_commerce_app/presentation/sign_up_complete_account_screen/sign_up_complete_account_screen.dart';
import 'package:e_commerce_app/presentation/select_a_country_screen/select_a_country_screen.dart';
import 'package:e_commerce_app/presentation/login_screen/login_screen.dart';
import 'package:e_commerce_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:e_commerce_app/presentation/search_screen/search_screen.dart';
import 'package:e_commerce_app/presentation/job_details_screen/job_details_screen.dart';
import 'package:e_commerce_app/presentation/chat_screen/chat_screen.dart';
import 'package:e_commerce_app/presentation/saved_detail_job_screen/saved_detail_job_screen.dart';
import 'package:e_commerce_app/presentation/apply_job_screen/apply_job_screen.dart';
import 'package:e_commerce_app/presentation/applied_job_screen/applied_job_screen.dart';
import 'package:e_commerce_app/presentation/notifications_general_screen/notifications_general_screen.dart';
import 'package:e_commerce_app/presentation/notifications_my_proposals_screen/notifications_my_proposals_screen.dart';
import 'package:e_commerce_app/presentation/settings_screen/settings_screen.dart';
import 'package:e_commerce_app/presentation/personal_info_screen/personal_info_screen.dart';
import 'package:e_commerce_app/presentation/experience_setting_screen/experience_setting_screen.dart';
import 'package:e_commerce_app/presentation/new_position_screen/new_position_screen.dart';
import 'package:e_commerce_app/presentation/add_new_education_screen/add_new_education_screen.dart';
import 'package:e_commerce_app/presentation/privacy_screen/privacy_screen.dart';
import 'package:e_commerce_app/presentation/language_screen/language_screen.dart';
import 'package:e_commerce_app/presentation/notifications_screen/notifications_screen.dart';
import 'package:e_commerce_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpCompleteAccountScreen =
      '/sign_up_complete_account_screen';

  static const String selectACountryScreen = '/select_a_country_screen';

  static const String loginScreen = '/login_screen';

  static const String enterOtpScreen = '/enter_otp_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String jobDetailsScreen = '/job_details_screen';

  static const String messagePage = '/message_page';

  static const String chatScreen = '/chat_screen';

  static const String savedPage = '/saved_page';

  static const String savedDetailJobScreen = '/saved_detail_job_screen';

  static const String applyJobScreen = '/apply_job_screen';

  static const String appliedJobScreen = '/applied_job_screen';

  static const String notificationsGeneralScreen =
      '/notifications_general_screen';

  static const String notificationsMyProposalsScreen =
      '/notifications_my_proposals_screen';

  static const String profilePage = '/profile_page';

  static const String settingsScreen = '/settings_screen';

  static const String personalInfoScreen = '/personal_info_screen';

  static const String experienceSettingScreen = '/experience_setting_screen';

  static const String newPositionScreen = '/new_position_screen';

  static const String addNewEducationScreen = '/add_new_education_screen';

  static const String privacyScreen = '/privacy_screen';

  static const String languageScreen = '/language_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        signUpCompleteAccountScreen: SignUpCompleteAccountScreen.builder,
        selectACountryScreen: SelectACountryScreen.builder,
        loginScreen: LoginScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        searchScreen: SearchScreen.builder,
        jobDetailsScreen: JobDetailsScreen.builder,
        chatScreen: ChatScreen.builder,
        savedDetailJobScreen: SavedDetailJobScreen.builder,
        applyJobScreen: ApplyJobScreen.builder,
        appliedJobScreen: AppliedJobScreen.builder,
        notificationsGeneralScreen: NotificationsGeneralScreen.builder,
        notificationsMyProposalsScreen: NotificationsMyProposalsScreen.builder,
        settingsScreen: SettingsScreen.builder,
        personalInfoScreen: PersonalInfoScreen.builder,
        experienceSettingScreen: ExperienceSettingScreen.builder,
        newPositionScreen: NewPositionScreen.builder,
        addNewEducationScreen: AddNewEducationScreen.builder,
        privacyScreen: PrivacyScreen.builder,
        languageScreen: LanguageScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
