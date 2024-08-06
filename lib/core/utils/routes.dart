import 'package:digitaltransactions/features/Dashboard/presentation/views/screen.dart';
import 'package:digitaltransactions/features/DetialsScreen/screen.dart';
import 'package:digitaltransactions/features/ExchangeRates/presentation/views/screen.dart';
import 'package:digitaltransactions/features/calculatorGold/presentation/views/screen.dart';
import 'package:digitaltransactions/features/calculatorprice/presentation/views/screen.dart';
import 'package:digitaltransactions/features/economicNewsDetails/presentation/views/screen.dart';
import 'package:digitaltransactions/features/economicnews/presentation/views/screen.dart';
import 'package:digitaltransactions/features/goldprices/presentation/views/screen.dart';
import 'package:digitaltransactions/features/setting/presentation/views/screen.dart';
import 'package:digitaltransactions/features/sliverPrices/screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/onboarding/presentation/views/widgets/onboarding_body.dart';

abstract class AppRouter{
  static const String kOnBoardingScreen= '/';
  static const String kCalculatorGold= '/calculatorGold';
  static const String kCalculatorPrice= '/calculatorprice';
  static const String kDashboard= '/Dashboard';
  static const String kDetialsScreen= '/DetialsScreen';
  static const String kEconomicNews= '/economicnews';
  static const String kEconomicNewsDetails= '/economicNewsDetails';
  static const String kExchangeRates= '/ExchangeRates';
  static const String kGoldPrices= '/goldprices';
  static const String kSetting= '/setting';
  static const String kSliverPrices= '/sliverPrices';
  static final router=GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingBody(),
      ),//1
      GoRoute(
        path: kCalculatorGold,
        builder: (context, state) => const GoldCalculatorScreen(),
      ),//2
      GoRoute(
        path: kCalculatorPrice,
        builder: (context, state) => const CalculatorPriceScreen(),
      ),//3
      GoRoute(
        path: kDashboard,
        builder: (context, state) => const DashboardScreen(),
      ),//4
      GoRoute(
        path: kDetialsScreen,
        builder: (context, state) => const DetailsScreen(),
      ),//5
      GoRoute(
        path: kEconomicNews,
        builder: (context, state) => const EconomicNewsScreen(),
      ),//6
      GoRoute(
        path: kEconomicNewsDetails,
        builder: (context, state) => const EconomicNewsDetailsScreen(),
      ),//7
      GoRoute(
        path: kExchangeRates,
        builder: (context, state) => const ExchangeRatesScreen(),
      ),//8
      GoRoute(
        path: kGoldPrices,
        builder: (context, state) => const GoldPricesScreen(),
      ),//9
      GoRoute(
        path: kSetting,
        builder: (context, state) => const SettingScreen(),
      ),//10
      GoRoute(
        path: kSliverPrices,
        builder: (context, state) => const SliverPricesScreen(),
      ),//11

    ]
  );


}