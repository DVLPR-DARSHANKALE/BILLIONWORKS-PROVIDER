import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/SingUp_screen.dart';
import 'package:provider/views/booking_list.dart';
import 'package:provider/views/home_screen/home_screen.dart';

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
        padding: EdgeInsets.all(20),
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
                style:
                    TextStyle(fontFamily: typo.WorkSansMedium, fontSize: 22.sp),
              ),
              Text(
                textAlign: TextAlign.center,
                "Welcome Back, you have been\nmissed for long Time",
                style: TextStyle(color: AppColor.GreyTExtColor),
              ),
              SizedBox(
                height: 85.h,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    Asseturl.igmassageicon,
                    scale: 3,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF6F7F9),
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                      color: AppColor.textColor,
                      fontFamily: typo.WorkSansMedium,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    Asseturl.ighide,
                    scale: 3,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF6F7F9),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: AppColor.textColor,
                      fontFamily: typo.WorkSansMedium,
                      fontSize: 14),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: AppColor.mainColor,
                    value: is_check,
                    onChanged: (value) {
                      is_check = value!;

                      setState(() {});
                    },
                  ),
                  Text(
                    "Remember Me",
                    style: TextStyle(
                        color: AppColor.GreyTExtColor,
                        fontFamily: typo.WorkSansMedium,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    width: 63.w,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: AppColor.mainColor,
                          fontFamily: typo.WorkSansSemiBoldItalic,
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
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    GoRouter.of(context).goNamed(BookingList.id);
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
                        color: AppColor.GreyTExtColor,
                        fontFamily: typo.WorkSansMedium,
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
                          color: AppColor.mainColor,
                          fontFamily: typo.WorkSansSemiBoldItalic),
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
                    child: Divider(color: AppColor.DividarColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Continue With",
                      style: TextStyle(color: AppColor.GreyTExtColor),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: AppColor.DividarColor),
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
                    Asseturl.igGoogleLogo,
                    scale: 3,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    Asseturl.igcallingicon2,
                    scale: 2.3,
                    color: AppColor.mainColor,
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
