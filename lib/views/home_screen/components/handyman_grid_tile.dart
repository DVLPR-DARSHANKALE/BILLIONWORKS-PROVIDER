import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';

Container handymanGridTile({icon, isAvailable = false}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset(Asseturl.igimagecard1),
            Positioned(
              right: 14,
              top: 10,
              child: CircleAvatar(
                radius: 14,
                backgroundColor: Colors.white,
                child: isAvailable
                    ? Icon(
                        Icons.power_settings_new,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.block,
                        color: Colors.red,
                      ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Rickey Ledner",
          style: TextStyle(
              color: Colors.black,
              fontFamily: typo.WorkSansMedium,
              fontSize: 16.sp),
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(
                0xffF0F0FA,
              ),
              child: Image.asset(
                Asseturl.igcallingicon2,
                color: AppColor.mainColor,
                scale: 4,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(
                0xffF0F0FA,
              ),
              child: Image.asset(
                Asseturl.igmassageicon,
                color: AppColor.mainColor,
                scale: 4,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            CircleAvatar(
              radius: 16,
              backgroundColor: Color(
                0xffF0F0FA,
              ),
              child: Image.asset(
                Asseturl.igchaticon,
                color: AppColor.mainColor,
                scale: 4,
              ),
            )
          ],
        )
      ],
    ),
  );
}
