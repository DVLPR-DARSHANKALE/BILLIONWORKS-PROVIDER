import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/TypoGraphay.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/home_screen/components/dashboard_grid_tile.dart';
import 'package:provider/views/home_screen/components/handyman_grid_tile.dart';
import 'package:provider/views/home_screen/service_list.dart';
import 'package:provider/views/shared_widgets/services_grid_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String id = "homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Home",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
        actions: [
          Image.asset(
            AssetUrl.igchaticon,
            scale: 4,
          ),
          SizedBox(
            width: 10.w,
          ),
          Image.asset(
            AssetUrl.igpersonicon,
            scale: 2,
            color: AppColors.whiteColor,
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // DASHBOARD CARD WIDGET
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffF6F7F9),
                      ),
                      padding: EdgeInsets.all(20),
                      height: 82.h,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Commision Type : ",
                                      style: TextStyle(
                                          color: AppColors.GreyTExtColor,
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp),
                                    ),
                                    TextSpan(
                                      text: "Company",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "My Commision : ",
                                      style: TextStyle(
                                          color: AppColors.GreyTExtColor,
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp),
                                    ),
                                    TextSpan(
                                      text: " \$20 ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: Typo.medium,
                                          fontSize: 14.sp),
                                    ),
                                    TextSpan(
                                      text: "(Fixed)",
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
                          Image.asset(
                            AssetUrl.ighomescreen1,
                            height: 42.h,
                            width: 42.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),

                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 90.h,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      children: [
                        DashboarGrid(
                            value: "98",
                            text: "Total Booking",
                            icon: AssetUrl.igticketicon),
                        DashboarGrid(
                            value: "15",
                            text: "Total Service",
                            icon: AssetUrl.igdocumentionicon),
                        DashboarGrid(
                            value: "30",
                            text: "Handyman",
                            icon: AssetUrl.igdocumentionicon),
                        DashboarGrid(
                            value: "\$45.3",
                            text: "Total Earning",
                            icon: AssetUrl.igticketicon),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "Monthly Revenue USD",
                      style: TextStyle(
                          color: Color(0xff1C1F34),
                          fontFamily: Typo.medium,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Image.asset(AssetUrl.igchartpng),
                    SizedBox(
                      height: 65.h,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Color(0xffEBEBEB),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Handyman",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: Typo.medium,
                              fontSize: 18.sp),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View All",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 216.h,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      children: [
                        handymanGridTile(),
                        handymanGridTile(),
                        handymanGridTile(),
                        handymanGridTile(isAvailable: true),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Services",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: Typo.medium,
                              fontSize: 18.sp),
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context).goNamed(ServiceList.id);
                          },
                          child: Text(
                            "View All",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: Typo.medium,
                                fontSize: 14.sp),
                          ),
                        )
                      ],
                    ),
                    GridView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 240.h,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      children: [
                        servicesGridTile(context),
                        servicesGridTile(context),
                        servicesGridTile(context),
                        servicesGridTile(context),
                        servicesGridTile(context),
                        servicesGridTile(context),
                        servicesGridTile(context),
                        servicesGridTile(context),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
