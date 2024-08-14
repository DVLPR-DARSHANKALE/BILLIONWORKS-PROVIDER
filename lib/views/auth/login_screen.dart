import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/consts/margins_spacings.dart';
import 'package:provider/views/auth/SingUp_screen.dart';
import 'package:provider/views/bookings_screen/booking_list.dart';
import 'package:provider/views/home/home.dart';
import 'package:provider/views/shared_widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static String id = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool is_check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: Spacing.screenPadding,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 109.h,
              ),
              Text(
                "Hello John!",
                style: TextStyle(fontFamily: Typo.medium, fontSize: 22.sp),
              ),
              Text(
                textAlign: TextAlign.center,
                "Welcome Back, you have been\nmissed for long Time",
                style: TextStyle(color: AppColors.GreyTExtColor),
              ),
              SizedBox(
                height: 85.h,
              ),
              customTextField(
                  icon: AssetUrl.igmassageicon, hint: "Enter your email"),
              SizedBox(
                height: 24.h,
              ),
              customTextField(
                  icon: AssetUrl.ighide, hint: "Password", isPass: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: is_check,
                        onChanged: (value) {
                          is_check = value!;

                          setState(() {});
                        },
                      ),
                      Text(
                        "Remember Me",
                        style: TextStyle(
                            color: AppColors.GreyTExtColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontFamily: Typo.semiBoldItalic,
                          fontSize: 12.sp),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 45.h,
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    GoRouter.of(context).goNamed(Home.id);
                  },
                  child: Container(child: Text("Login")),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        color: AppColors.GreyTExtColor,
                        fontFamily: Typo.medium,
                        fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).goNamed(SingupScreen.id);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColors.primaryColor,
                          fontFamily: Typo.semiBoldItalic),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 85.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(color: AppColors.DividarColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Continue With",
                      style: TextStyle(color: AppColors.GreyTExtColor),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: AppColors.DividarColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AssetUrl.igGoogleLogo,
                    scale: 3,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    AssetUrl.igcallingicon2,
                    scale: 2.3,
                    color: AppColors.primaryColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
