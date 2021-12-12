import 'package:get/get.dart';

import 'package:covid19/app/modules/confirmed/bindings/confirmed_binding.dart';
import 'package:covid19/app/modules/confirmed/views/confirmed_view.dart';
import 'package:covid19/app/modules/daily/bindings/daily_binding.dart';
import 'package:covid19/app/modules/daily/views/daily_view.dart';
import 'package:covid19/app/modules/death/bindings/death_binding.dart';
import 'package:covid19/app/modules/death/views/death_view.dart';
import 'package:covid19/app/modules/detail_daily/bindings/detail_daily_binding.dart';
import 'package:covid19/app/modules/detail_daily/views/detail_daily_view.dart';
import 'package:covid19/app/modules/home/bindings/home_binding.dart';
import 'package:covid19/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DAILY,
      page: () => DailyView(),
      binding: DailyBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRMED,
      page: () => ConfirmedView(),
      binding: ConfirmedBinding(),
    ),
    GetPage(
      name: _Paths.DEATH,
      page: () => DeathView(),
      binding: DeathBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_DAILY,
      page: () => DetailDailyView(),
      binding: DetailDailyBinding(),
    ),
  ];
}
