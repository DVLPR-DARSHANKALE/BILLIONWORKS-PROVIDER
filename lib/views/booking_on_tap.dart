import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/views/reviewservice_screen.dart';
import 'package:provider/views/service_list.dart';

import '../consts/packages.dart';

class BookingOnTap extends StatelessWidget {
  const BookingOnTap({super.key});

  static String id = "bookontap";
  opensheet(context) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking History",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: typo.WorkSansMedium,
                      fontSize: 16.sp),
                ),
                Text(
                  "ID : #123",
                  style: TextStyle(
                      color: AppColor.mainColor,
                      fontFamily: typo.WorkSansSemiBold,
                      fontSize: 16.sp),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "1:17 PM",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "6 Feb",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                SizedBox(
                  height: 100.h,
                  child: Column(
                    children: [
                      CircleAvatar(radius: 6, backgroundColor: Colors.red),
                      SizedBox(
                        height: 8.h,
                      ),
                      ...List.generate(
                        10,
                        (index) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: VerticalDivider(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Booking",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "New Booking Added by \ncustomer",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "1:21 PM",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "6 Feb",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                SizedBox(
                  height: 100.h,
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 6, backgroundColor: Color(0xff00968A)),
                      SizedBox(
                        height: 8.h,
                      ),
                      ...List.generate(
                        10,
                        (index) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: VerticalDivider(
                              color: Color(0xff00968A),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Accept Booking",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "Status changed \nFrom pending to accept ",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "1:22 PM",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "6 Feb",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
                SizedBox(
                  height: 100.h,
                  child: Column(
                    children: [
                      CircleAvatar(radius: 6, backgroundColor: Colors.orange),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 32.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assigned Booking",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 16.sp),
                    ),
                    Text(
                      "Booking has assigned \nto Naomie Hackett",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansSemiBold,
                          fontSize: 14.sp),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 16,
        ),
        title: Text(
          "Pending",
          style: TextStyle(
              color: Colors.white,
              fontFamily: typo.WorkSansMedium,
              fontSize: 16.sp),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              opensheet(context);
            },
            child: Text(
              "Check Status",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: typo.WorkSansMedium,
                  fontSize: 14.sp),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
        ],
        backgroundColor: AppColor.mainColor,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking ID",
                    style: TextStyle(
                        color: Color(0xff6C757D),
                        fontFamily: typo.WorkSansMedium,
                        fontSize: 16.sp),
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
              SizedBox(
                height: 18.h,
              ),
              Divider(
                color: Color(0xffEBEBEB),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apartment Cleanings",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: typo.WorkSansMedium,
                            fontSize: 18.sp),
                      ),
                      Row(
                        children: [
                          Text(
                            "Date :",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: typo.WorkSansMedium,
                                fontSize: 14.sp),
                          ),
                          Text(
                            " 26 Jan, 2022",
                            style: TextStyle(
                                color: AppColor.textColor,
                                fontFamily: typo.WorkSansMedium,
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Time :",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: typo.WorkSansMedium,
                                fontSize: 14.sp),
                          ),
                          Text(
                            " 04:00 PM",
                            style: TextStyle(
                                color: AppColor.textColor,
                                fontFamily: typo.WorkSansMedium,
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Container(
                        width: 43.w,
                        height: 16.h,
                        child: SvgPicture.asset(Asseturl.igimg1),
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        "About Handyman",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: typo.WorkSansMedium,
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.all(24),
                width: 336.w,
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 55.r,
                          backgroundImage: AssetImage(Asseturl.igbackgroundimg),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        Column(
                          children: [
                            Text(
                              "Justine Boyle",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: typo.WorkSansMedium,
                                  fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Text(
                              "Cleaning Expert",
                              style: TextStyle(
                                  color: Color(0xff6C757D),
                                  fontFamily: typo.WorkSansMedium,
                                  fontSize: 14.sp),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              children: [
                                VxRating(
                                  onRatingUpdate: (value) {},
                                  selectionColor: Colors.yellow.shade600,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      color: Color(0xff6C757D),
                                      fontFamily: typo.WorkSansMedium,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                Asseturl.igcallingicon2,
                                scale: 4,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text("Call",
                                  style: TextStyle(
                                      fontFamily: typo.WorkSansMedium,
                                      fontSize: 14.sp)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        FilledButton(
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                Asseturl.igchaticon,
                                color: Colors.black,
                                scale: 4.5,
                              ),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Chat",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: typo.WorkSansMedium,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Rate Handyman",
                      style: TextStyle(
                          color: Color(0xff5F60B9),
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "About Customer",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: typo.WorkSansMedium,
                        fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                padding: EdgeInsets.all(24),
                width: 336.w,
                decoration: BoxDecoration(
                  color: Color(0xffF6F7F9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 55.r,
                          backgroundImage:
                              AssetImage(Asseturl.igbackgroundimg1),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Leslie Alexander",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: typo.WorkSansMedium,
                                  fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "Cleaning Expert",
                                  style: TextStyle(
                                      color: Color(0xff6C757D),
                                      fontFamily: typo.WorkSansMedium,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "1901 Thornridge Cirav...",
                                  style: TextStyle(
                                      color: Color(0xff6C757D),
                                      fontFamily: typo.WorkSansMedium,
                                      fontSize: 14.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FilledButton(
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          )),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                Asseturl.igcallingicon2,
                                scale: 4,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text("Call",
                                  style: TextStyle(
                                      fontFamily: typo.WorkSansMedium,
                                      fontSize: 14.sp)),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        FilledButton(
                          style: ButtonStyle(
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                Asseturl.igchaticon,
                                color: Colors.black,
                                scale: 4.5,
                              ),
                              SizedBox(
                                height: 5.w,
                              ),
                              Text(
                                "Chat",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: typo.WorkSansMedium,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 43.h,
                child: FilledButton(
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  )),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 3.w,
                      ),
                      Text("Cancel Booking",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment Details",
                    style: TextStyle(
                        fontFamily: typo.WorkSansMedium, fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: 335.w,
                height: 220.h,
                decoration: BoxDecoration(
                    color: Color(0xffF6F7F9),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ID",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "#123",
                          style: TextStyle(
                              color: AppColor.mainColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Method",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "Cash",
                          style: TextStyle(
                              color: AppColor.textColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Status",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "Pending",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "\$459",
                          style: TextStyle(
                              color: AppColor.textColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Price Detail",
                    style: TextStyle(
                        fontFamily: typo.WorkSansMedium, fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: 335.w,
                height: 350.h,
                decoration: BoxDecoration(
                    color: Color(0xffF6F7F9),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rate",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "\$45.00",
                          style: TextStyle(
                              color: AppColor.mainColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quantity",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "*2",
                          style: TextStyle(
                              color: AppColor.textColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          " (5% off)",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 128.w,
                        ),
                        Text(
                          "- \$23.66",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text(
                          "Coupon",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "(AB45789A)",
                          style: TextStyle(
                              color: AppColor.mainColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 140.w,
                        ),
                        Text(
                          "\$459",
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              fontFamily: typo.WorkSansMedium, fontSize: 14.sp),
                        ),
                        Text(
                          "\$459",
                          style: TextStyle(
                              color: AppColor.textColor,
                              fontFamily: typo.WorkSansMedium,
                              fontSize: 14.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              fontFamily: typo.WorkSansSemiBold,
                              fontSize: 14.sp),
                        ),
                        Text(
                          "\$1255",
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
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                        fontFamily: typo.WorkSansMedium, fontSize: 16.sp),
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).goNamed(ReviewserviceScreen.id);
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: typo.WorkSansMedium,
                          fontSize: 12.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Asseturl.igbackgroundimg3),
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
                                fontFamily: typo.WorkSansMedium,
                                fontSize: 14.sp),
                          ),
                          SizedBox(
                            width: 155.w,
                          ),
                          Text(
                            "02 Dec",
                            style: TextStyle(
                                color: AppColor.textColor,
                                fontFamily: typo.WorkSansMedium,
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
                                color: AppColor.textColor,
                                fontFamily: typo.WorkSansMedium,
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
                            color: AppColor.textColor,
                            fontFamily: typo.WorkSansMedium,
                            fontSize: 14.sp),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Asseturl.igbackgroundimg3),
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
                                fontFamily: typo.WorkSansMedium,
                                fontSize: 14.sp),
                          ),
                          SizedBox(
                            width: 130.w,
                          ),
                          Text(
                            "25 Jan",
                            style: TextStyle(
                                color: AppColor.textColor,
                                fontFamily: typo.WorkSansMedium,
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
                                color: AppColor.textColor,
                                fontFamily: typo.WorkSansMedium,
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
                            color: AppColor.textColor,
                            fontFamily: typo.WorkSansMedium,
                            fontSize: 14.sp),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
