import 'package:flutter/material.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/consts/packages.dart';

class Paymentscreen extends StatelessWidget {
  const Paymentscreen({super.key});
  static String id = "paymentscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        title: Text(
          "Payment",
          style: TextStyle(
              color: Colors.white,
              fontFamily: typo.WorkSansMedium,
              fontSize: 18.sp),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              paymentcard(),
              paymentcard(),
              paymentcard(),
            ],
          ),
        ),
      ),
    );
  }

  Container paymentcard() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.DividarColor),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 53.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffF0F0FA),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Alexis Lockman",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: typo.WorkSansMedium,
                      fontSize: 18.sp),
                ),
                Text(
                  "#123",
                  style: TextStyle(
                      color: AppColor.mainColor,
                      fontFamily: typo.WorkSansSemiBold,
                      fontSize: 18.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ID",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                    Text(
                      "#12",
                      style: TextStyle(
                          color: AppColor.GreyTExtColor,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: AppColor.DividarColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Status",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                    Text(
                      "Pending",
                      style: TextStyle(
                          color: AppColor.GreyTExtColor,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: AppColor.DividarColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Method",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                    Text(
                      "Cash",
                      style: TextStyle(
                          color: AppColor.GreyTExtColor,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: AppColor.DividarColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Amount Paid",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    ),
                    Text(
                      "\$1500",
                      style: TextStyle(
                          color: AppColor.mainColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
