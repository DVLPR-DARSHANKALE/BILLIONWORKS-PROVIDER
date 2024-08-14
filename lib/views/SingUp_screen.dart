import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/Login_screen.dart';
import 'package:provider/views/home_screen/home_screen.dart';

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
                  color: AppColor.mainColor,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  Asseturl.igpersonicon,
                  height: 36.h,
                  width: 36.h,
                ),
              ),
              Text(
                "Hello User!",
                style:
                    TextStyle(fontFamily: typo.WorkSansMedium, fontSize: 22.sp),
              ),
              Text(
                textAlign: TextAlign.center,
                "Welcome Back, you have been\nmissed for long Time",
                style: TextStyle(color: AppColor.GreyTExtColor),
              ),
              SizedBox(
                height: 38.h,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    Asseturl.igpersonicon,
                    scale: 2,
                    color: AppColor.GreyTExtColor,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  fillColor: Color(0xffF6F7F9),
                  hintText: "Full Name",
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
                  hintText: "User Name",
                  suffixIcon: Image.asset(Asseturl.igpersonicon,
                      scale: 2, color: AppColor.GreyTExtColor),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  hintText: "saul@user.com",
                  suffixIcon: Image.asset(Asseturl.igmassageicon,
                      scale: 4, color: AppColor.GreyTExtColor),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Contact Number",
                  suffixIcon: Image.asset(Asseturl.igcallingicon2,
                      scale: 4, color: AppColor.GreyTExtColor),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Image.asset(Asseturl.ighide,
                      scale: 4, color: AppColor.GreyTExtColor),
                ),
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
                    GoRouter.of(context).goNamed(HomeScreen.id);
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
                        color: AppColor.GreyTExtColor,
                        fontFamily: typo.WorkSansMedium,
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
                          color: AppColor.mainColor,
                          fontFamily: typo.WorkSansSemiBoldItalic),
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
