import 'package:get/get.dart';
import 'package:xtrade/views/auth/otp/email_verification_screen.dart';
import 'package:xtrade/views/drawer/about_app_screen.dart';
import 'package:xtrade/views/drawer/calender_screen/calendar_screen.dart';
import 'package:xtrade/views/drawer/calender_screen/filter_screen/filter_calender_screen.dart';
import 'package:xtrade/views/drawer/card_screens/visa_card_screen.dart';
import 'package:xtrade/views/drawer/deposit/deposit_card_select_screen.dart';
import 'package:xtrade/views/drawer/deposit/deposite_money_screen.dart';
import 'package:xtrade/views/drawer/deposit/deposite_review_screen.dart';
import 'package:xtrade/views/drawer/discover_screen/discover_screen.dart';
import 'package:xtrade/views/drawer/eur_usd_screen.dart';
import 'package:xtrade/views/drawer/get_help_screen.dart';
import 'package:xtrade/views/drawer/help_screen.dart';
import 'package:xtrade/views/home_screen/home_screen.dart';
import 'package:xtrade/views/drawer/learning_screen.dart';
import 'package:xtrade/views/drawer/more_screen.dart';
import 'package:xtrade/views/drawer/news_screen/eur_usd_details_screen.dart';
import 'package:xtrade/views/drawer/news_screen/news_screen.dart';
import 'package:xtrade/views/drawer/portfolio_screen/portfolio_screen.dart';
import 'package:xtrade/views/drawer/profile_screen/about_user_screen.dart';
import 'package:xtrade/views/drawer/profile_screen/profile_screen.dart';
import 'package:xtrade/views/drawer/profile_settings/profile_settings_screen.dart';
import 'package:xtrade/bindings/splash_binding.dart';
import 'package:xtrade/views/drawer/support_box/support_box_screen.dart';
import 'package:xtrade/views/drawer/trading_screen/trading_screen.dart';
import 'package:xtrade/views/auth/otp/reset_password_screen.dart';
import 'package:xtrade/views/auth/sign_in_screen.dart';
import 'package:xtrade/views/auth/sign_up_screen.dart';
import 'package:xtrade/views/auth/otp/verification_code_screen.dart';
import 'package:xtrade/views/splash_screen.dart';
import 'package:xtrade/views/drawer/wallet_screen/wallet_screen.dart';
import 'package:xtrade/views/drawer/wallet_screen/wallet_settings_screen.dart';
import 'package:xtrade/views/drawer/withdraw/withdraw_card_select_screen.dart';
import 'package:xtrade/views/drawer/withdraw/withdraw_money_screen.dart';
import 'package:xtrade/views/drawer/withdraw/withdraw_review_screen.dart';

import '../views/onboard/onboard_screen.dart';
import '../views/welcome_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String signInScreen = '/signInScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String verificationCodeScreen = '/verificationCodeScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String emailVerificationScreen = '/emailVerificationScreen';
  static const String getHelpScreen = '/getHelpScreen';
  static const String helpScreen = '/helpScreen';
  static const String supportBox = '/supportBox';
  static const String homeScreen = '/homeScreen';
  static const String eduUsdScreen = '/eduUsdScreen';
  static const String tradingScreen = '/tradingScreen';
  static const String portfolioScreen = '/portfolioScreen';
  static const String profileScreen = '/profileScreen';
  static const String aboutUserScreen = '/aboutUserScreen';
  static const String newsScreen = '/newsScreen';
  static const String eurUsdDetailsScreen = '/eurUsdDetailsScreen';
  static const String moreScreen = '/moreScreen';
  static const String learningScreen = '/learningScreen';
  static const String calendarScreen = '/calendarScreen';
  static const String filterCalenderScreen = '/filterCalenderScreen';
  static const String discoverScreen = '/discoverScreen';
  static const String profileSettingsScreen = '/profileSettingsScreen';
  static const String walletScreen = '/walletScreen';
  static const String walletSettingsScreen = '/walletSettingsScreen';
  static const String visaCardScreen = '/visaCardScreen';
  static const String depositCardSelectScreen = '/depositCardSelectScreen';
  static const String withdrawCardSelectScreen = '/withdrawCardSelectScreen';
  static const String depositMoneyScreen = '/depositMoneyScreen';
  static const String withdrawMoneyScreen = '/withdrawMoneyScreen';
  static const String depositReviewScreen = '/depositReviewScreen';
  static const String withdrawReviewScreen = '/withdrawReviewScreen';
  static const String withdrawMoneySelectScreen = '/withdrawMoneySelectScreen';
  static const String withdrawReviewSelectScreen = '/withdrawReviewSelectScreen';
  static const String aboutAppScreen = '/aboutAppScreen';

  static var list = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboardScreen,
      page: () => const OnBoardScreen(),
    ),
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: verificationCodeScreen,
      page: () => const VerificationCodeScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => const ResetPasswordScreen(),
    ),
    GetPage(
      name: signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: emailVerificationScreen,
      page: () => const EmailVerificationScreen(),
    ),
    GetPage(
      name: getHelpScreen,
      page: () => const GetHelpScreen(),
    ),
    GetPage(
      name: helpScreen,
      page: () => const HelpScreen(),
    ),
    GetPage(
      name: supportBox,
      page: () => const SupportBox(),
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: eduUsdScreen,
      page: () => const EurUsdScreen(),
    ),
    GetPage(
      name: tradingScreen,
      page: () => const TradingScreen(),
    ),
    GetPage(
      name: portfolioScreen,
      page: () => const PortfolioScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: aboutUserScreen,
      page: () => const AboutUserScreen(),
    ),
    GetPage(
      name: newsScreen,
      page: () => const NewsScreen(),
    ),
    GetPage(
      name: eurUsdDetailsScreen,
      page: () => const EurUsdDetailsScreen(),
    ),
    GetPage(
      name: moreScreen,
      page: () => const MoreScreen(),
    ),
    GetPage(
      name: learningScreen,
      page: () => const LearningScreen(),
    ),
    GetPage(
      name: calendarScreen,
      page: () => const CalendarScreen(),
    ),
    GetPage(
      name: filterCalenderScreen,
      page: () => const FilterCalenderScreen(),
    ),
    GetPage(
      name: discoverScreen,
      page: () => const DiscoverScreen(),
    ),
    GetPage(
      name: profileSettingsScreen,
      page: () => const ProfileSettingsScreen(),
    ),
    GetPage(
      name: walletScreen,
      page: () => const WalletScreen(),
    ),
    GetPage(
      name: walletSettingsScreen,
      page: () => WalletSettingsScreen(),
    ),
    GetPage(
      name: visaCardScreen,
      page: () => const VisaCardScreen(),
    ),
    GetPage(
      name: depositCardSelectScreen,
      page: () => const DepositCardSelectScreen(),
    ),
    GetPage(
      name: depositMoneyScreen,
      page: () => const DepositMoneyScreen(),
    ),
    GetPage(
      name: depositReviewScreen,
      page: () => const DepositReviewScreen(),
    ),
    GetPage(
      name: withdrawCardSelectScreen,
      page: () => const WithdrawCardSelectScreen(),
    ),
    GetPage(
      name: withdrawMoneySelectScreen,
      page: () => const WithdrawMoneyScreen(),
    ),
    GetPage(
      name: withdrawReviewSelectScreen,
      page: () => const WithdrawReviewScreen(),
    ),
    GetPage(
      name: aboutAppScreen,
      page: () => const AboutAppScreen(),
    ),
    GetPage(
      name: withdrawMoneyScreen,
      page: () => const WithdrawMoneyScreen(),
    ),

  ];
}
