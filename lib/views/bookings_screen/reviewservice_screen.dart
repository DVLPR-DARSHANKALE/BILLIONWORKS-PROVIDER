import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/consts/packages.dart';
import 'package:provider/views/bookings_screen/booking_on_tap.dart';

class ReviewserviceScreen extends StatelessWidget {
  const ReviewserviceScreen({super.key});

  static String id = "reviewsrevicescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop(BookingOnTap());
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Review On Services",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Customer Review By Service Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: Typo.medium,
                        fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              reviewcard(),
              reviewcard(),
              reviewcard(),
            ],
          ),
        ),
      ),
    );
  }

  Container reviewcard() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      padding: EdgeInsets.all(25),
      height: 400.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xffF6F7F9), borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: AssetImage(AssetUrl.igserviceimg1),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    children: [
                      Text(
                        "Donna Bins",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: Typo.medium,
                            fontSize: 18.sp),
                      ),
                      Text(
                        "@DONNABINS",
                        style: TextStyle(
                            color: AppColors.GreyTExtColor,
                            fontFamily: Typo.medium,
                            fontSize: 14.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.delete_outline_outlined,
                color: AppColors.primaryColor,
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            padding: EdgeInsets.all(16),
            height: 225.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Service Name : Painting",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Typo.medium,
                      fontSize: 14.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Divider(
                  color: AppColors.DividarColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    VxRating(
                      onRatingUpdate: (value) => {},
                      selectionColor: Colors.yellow.shade600,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          color: AppColors.GreyTExtColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      width: 135.w,
                    ),
                    Text(
                      "25 Jan",
                      style: TextStyle(
                          color: AppColors.GreyTExtColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Amet minim mollit non deserunt \nullamco est sit aliqua dolor do amet. ",
                  style: TextStyle(
                      color: AppColors.GreyTExtColor,
                      fontFamily: Typo.medium,
                      fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
