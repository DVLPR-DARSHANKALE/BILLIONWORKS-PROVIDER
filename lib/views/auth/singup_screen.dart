import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/auth/login_screen.dart';
import 'package:provider/views/home/home.dart';
import 'package:provider/views/home_screen/home_screen.dart';
import 'package:provider/views/shared_widgets/custom_textfield.dart';

class SingupScreen extends StatelessWidget {
  const SingupScreen({super.key});
  static String id = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              SizedBox(
                height: 75.h,
              ),
              Container(
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  AssetUrl.igpersonicon,
                  height: 36.h,
                  width: 36.h,
                ),
              ),
              Text(
                "Hello User!",
                style: TextStyle(fontFamily: Typo.medium, fontSize: 22.sp),
              ),
              Text(
                textAlign: TextAlign.center,
                "Welcome Back, you have been\nmissed for long Time",
                style: TextStyle(color: AppColors.GreyTExtColor),
              ),
              SizedBox(
                height: 38.h,
              ),
              customTextField(
                hint: "Full Name",
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  suffixIcon: Image.asset(AssetUrl.igpersonicon,
                      scale: 2, color: AppColors.GreyTExtColor),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              customTextField(hint: "Email"),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Contact Number",
                  suffixIcon: Image.asset(AssetUrl.igcallingicon2,
                      scale: 4, color: AppColors.GreyTExtColor),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Image.asset(AssetUrl.ighide,
                      scale: 4, color: AppColors.GreyTExtColor),
                ),
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
                  child: Container(child: Text("SIGNUP")),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: AppColors.GreyTExtColor,
                        fontFamily: Typo.medium,
                        fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).goNamed(LoginScreen.id);
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: AppColors.primaryColor,
                          fontFamily: Typo.semiBoldItalic),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
