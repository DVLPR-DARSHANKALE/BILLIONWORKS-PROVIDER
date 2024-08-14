import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/views/auth/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String id = "Splashscreen";
  changeScreen(context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        GoRouter.of(context).goNamed(LoginScreen.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    changeScreen(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetUrl.igProviderlogo1,
              height: 100.h,
              width: 100.w,
            ),
            Text(
              "Provider",
              style: TextStyle(
                fontFamily: Typo.medium,
                fontSize: 30.sp,
                color: Color(0xff1C1F34),
              ),
            )
          ],
        ),
      ),
    );
  }
}
