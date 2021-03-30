import 'package:demo_get/screen/home/home_screen.dart';
import 'package:get/get.dart';


abstract class Routes {
  static const String home = "/home";
  static const String detail = "/detail";
}

class RouterPages {
  static const INITIAL = Routes.home;

  static final routes = [
    GetPage(
          name: Routes.home,
          page: () => HomeView(),
        ),
     

    // GetPage(
    //     name: Routes.home,
    //     page: () => HomeScreen(),
    //     binding: HomeBinding(),
    //     children: [
    //       GetPage(
    //         name: Routes.COUNTRY,
    //         page: () => CountryView(),
    //         children: [
    //           GetPage(
    //             name: Routes.DETAILS,
    //             page: () => DetailsView(),
    //           ),
    //         ],
    //       ),
    //     ]),
  ];
}