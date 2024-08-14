import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';

TextField customTextField({hint, icon, isPass = false}) {
  return TextField(
    obscureText: isPass,
    decoration: InputDecoration(
      label: Text(hint),
      suffixIcon: icon != null
          ? Image.asset(
              icon,
              scale: 3,
            )
          : null,
      filled: true,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      fillColor: Color(0xffF6F7F9),
      hintText: hint,
      hintStyle: TextStyle(
          color: AppColors.textColor, fontFamily: Typo.medium, fontSize: 14),
    ),
  );
}
