import 'package:flutter/material.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/packages.dart';

// List<Image> galleryImages = [

// ];
class Servicedetails extends StatelessWidget {
  const Servicedetails({super.key});
  static String id = "secvicedetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      AssetUrl.igsevicedetailsimg1,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 47,
                    left: 20,
                    child: IconButton.filled(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 47,
                    child: IconButton.filled(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.more_horiz),
                    ),
                  ),
                  Positioned(
                    top: 268,
                    right: 20,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "TV Wall Mount Installation",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 22.sp),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$500",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontFamily: Typo.semiBold,
                                    fontSize: 20.sp),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "10% off",
                                style: TextStyle(
                                    color: AppColors.GreyTExtColor,
                                    fontFamily: Typo.semiBold,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Duration :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Typo.regular,
                                    fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "01 Hour",
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontFamily: Typo.medium,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rating :",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: Typo.regular,
                                    fontSize: 14.sp),
                              ),
                              SizedBox(
                                width: 210.w,
                              ),
                              VxRating(
                                count: 1,
                                onRatingUpdate: (value) {},
                                selectionColor: Colors.yellow.shade600,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    color: AppColors.GreyTExtColor,
                                    fontFamily: Typo.medium,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: Typo.medium,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "It is a long established fact that a reader will be \ndistracted by the readable content of a page \nwhen looking at its layout. ",
                      style: TextStyle(
                          color: AppColors.GreyTExtColor,
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              ),
              Container(
                height: 250.h,
                width: double.infinity,
                color: Color(0xffF6F7F9),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Gallery",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: Typo.medium,
                              fontSize: 16.sp),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: AppColors.GreyTExtColor,
                              fontFamily: Typo.semiBold,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          4,
                          (index) => Container(
                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.only(right: 8.w),
                            height: 99.h,
                            width: 99.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                            ),
                            child: Image.asset(
                              AssetUrl.igsevicedetailsimg1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Reviews",
                      style:
                          TextStyle(fontFamily: Typo.medium, fontSize: 16.sp),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AssetUrl.igbackgroundimg3),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Donna Bins",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp),
                            ),
                            SizedBox(
                              width: 155.w,
                            ),
                            Text(
                              "02 Dec",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: Typo.medium,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            VxRating(
                              onRatingUpdate: (value) {},
                              selectionColor: Colors.yellow.shade600,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Amal is incredible at what he does,\nvery prompt with delivery and any \nrevisions.",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontFamily: Typo.medium,
                              fontSize: 14.sp),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(AssetUrl.igbackgroundimg3),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Saul Armstrong",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp),
                            ),
                            SizedBox(
                              width: 130.w,
                            ),
                            Text(
                              "25 Jan",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: Typo.medium,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            VxRating(
                              onRatingUpdate: (value) {},
                              selectionColor: Colors.yellow.shade600,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: Typo.medium,
                                  fontSize: 14.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          "Amal is incredible at what he does,\nvery prompt with delivery and any \nrevisions.",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontFamily: Typo.medium,
                              fontSize: 14.sp),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
