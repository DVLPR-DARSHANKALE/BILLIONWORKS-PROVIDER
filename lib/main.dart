import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/Login_screen.dart';
import 'package:provider/views/SingUp_screen.dart';
import 'package:provider/views/booking_list.dart';
import 'package:provider/views/booking_on_tap.dart';
import 'package:provider/views/home_screen/home_screen.dart';
import 'package:provider/views/paymentscreen.dart';
import 'package:provider/views/reviewservice_screen.dart';
import 'package:provider/views/service_list.dart';
import 'package:provider/views/servicedetails.dart';
import 'package:provider/views/splash_screen.dart';

void main() {
  runApp(Provider());
}

class Provider extends StatelessWidget {
  Provider({super.key});

  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: SplashScreen.id,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: "/login",
        name: LoginScreen.id,
        builder: (context, state) => LoginScreen(),
        routes: [
          GoRoute(
            path: "singup",
            name: SingupScreen.id,
            builder: (context, state) => SingupScreen(),
          ),
        ],
      ),
      GoRoute(
        path: "/home",
        name: HomeScreen.id,
        builder: (context, state) => HomeScreen(),
        routes: [
          GoRoute(
            path: 'servicelist',
            name: ServiceList.id,
            builder: (context, state) => ServiceList(),
          ),
        ],
      ),
      GoRoute(
        path: "/Bookinglist",
        name: BookingList.id,
        builder: (context, state) => BookingList(),
        routes: [
          GoRoute(
            path: 'bookingontap',
            name: BookingOnTap.id,
            builder: (context, state) => BookingOnTap(),
          ),
        ],
      ),
      GoRoute(
        path: "/reviewservicescreen",
        name: ReviewserviceScreen.id,
        builder: (context, state) => ReviewserviceScreen(),
      ),
      GoRoute(
        path: "/paymentscreen",
        name: Paymentscreen.id,
        builder: (context, state) => Paymentscreen(),
      ),
      GoRoute(
        path: "/servicedatials",
        name: Servicedetails.id,
        builder: (context, state) => Servicedetails(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, widget) {
        return MaterialApp.router(
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              fillColor: Color(0xffF6F7F9),
              hintStyle: TextStyle(
                  color: AppColor.textColor,
                  fontFamily: typo.WorkSansMedium,
                  fontSize: 14),
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
            ),
            scaffoldBackgroundColor: AppColor.whiteColor,
          ),
        );
      },
    );
  }
}
