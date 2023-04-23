import 'package:events/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:events/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:events/presentation/app_icon_one_screen/app_icon_one_screen.dart';
import 'package:events/presentation/app_icon_one_screen/binding/app_icon_one_binding.dart';
import 'package:events/presentation/app_icon_screen/app_icon_screen.dart';
import 'package:events/presentation/app_icon_screen/binding/app_icon_binding.dart';
import 'package:events/presentation/otp_screen/otp_screen.dart';
import 'package:events/presentation/otp_screen/binding/otp_binding.dart';
import 'package:events/presentation/home_container_screen/home_container_screen.dart';
import 'package:events/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:events/presentation/select_city_screen/select_city_screen.dart';
import 'package:events/presentation/select_city_screen/binding/select_city_binding.dart';
import 'package:events/presentation/search_screen/search_screen.dart';
import 'package:events/presentation/search_screen/binding/search_binding.dart';
import 'package:events/presentation/search_result_screen/search_result_screen.dart';
import 'package:events/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:events/presentation/category_screen/category_screen.dart';
import 'package:events/presentation/category_screen/binding/category_binding.dart';
import 'package:events/presentation/filter_screen/filter_screen.dart';
import 'package:events/presentation/filter_screen/binding/filter_binding.dart';
import 'package:events/presentation/filter_selected_screen/filter_selected_screen.dart';
import 'package:events/presentation/filter_selected_screen/binding/filter_selected_binding.dart';
import 'package:events/presentation/show_screen/show_screen.dart';
import 'package:events/presentation/show_screen/binding/show_binding.dart';
import 'package:events/presentation/booking_screen/booking_screen.dart';
import 'package:events/presentation/booking_screen/binding/booking_binding.dart';
import 'package:events/presentation/booking_two_screen/booking_two_screen.dart';
import 'package:events/presentation/booking_two_screen/binding/booking_two_binding.dart';
import 'package:events/presentation/profile_screen/profile_screen.dart';
import 'package:events/presentation/profile_screen/binding/profile_binding.dart';
import 'package:events/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:events/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signInScreen = '/sign_in_screen';

  static const String appIconOneScreen = '/app_icon_one_screen';

  static const String appIconScreen = '/app_icon_screen';

  static const String otpScreen = '/otp_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String selectCityScreen = '/select_city_screen';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String eventsPage = '/events_page';

  static const String categoryScreen = '/category_screen';

  static const String filterScreen = '/filter_screen';

  static const String filterSelectedScreen = '/filter_selected_screen';

  static const String showScreen = '/show_screen';

  static const String bookingScreen = '/booking_screen';

  static const String bookingTwoScreen = '/booking_two_screen';

  static const String profileOnePage = '/profile_one_page';

  static const String profileScreen = '/profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: appIconOneScreen,
      page: () => AppIconOneScreen(),
      bindings: [
        AppIconOneBinding(),
      ],
    ),
    GetPage(
      name: appIconScreen,
      page: () => AppIconScreen(),
      bindings: [
        AppIconBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: selectCityScreen,
      page: () => SelectCityScreen(),
      bindings: [
        SelectCityBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: categoryScreen,
      page: () => CategoryScreen(),
      bindings: [
        CategoryBinding(),
      ],
    ),
    GetPage(
      name: filterScreen,
      page: () => FilterScreen(),
      bindings: [
        FilterBinding(),
      ],
    ),
    GetPage(
      name: filterSelectedScreen,
      page: () => FilterSelectedScreen(),
      bindings: [
        FilterSelectedBinding(),
      ],
    ),
    GetPage(
      name: showScreen,
      page: () => ShowScreen(),
      bindings: [
        ShowBinding(),
      ],
    ),
    GetPage(
      name: bookingScreen,
      page: () => BookingScreen(),
      bindings: [
        BookingBinding(),
      ],
    ),
    GetPage(
      name: bookingTwoScreen,
      page: () => BookingTwoScreen(),
      bindings: [
        BookingTwoBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    )
  ];
}
