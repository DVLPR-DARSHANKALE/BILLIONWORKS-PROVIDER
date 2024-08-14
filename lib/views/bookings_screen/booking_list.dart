import 'package:go_router/go_router.dart';
import 'package:provider/views/bookings_screen/booking_on_tap.dart';
import 'package:provider/views/payment_screen/paymentscreen.dart';

import '../../consts/packages.dart';

class BookingList extends StatefulWidget {
  BookingList({super.key});

  static String id = "BoookingListScreen";

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  List status = ["All", "Completed", "Pending", "Rejected"];

  showBookingSummary() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: AppColors.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Booking Summary",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: Typo.medium),
                  ),
                  IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 125.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          AssetUrl.igCarpenterPhoto,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Car wash and cleaning",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 16.sp),
                          ),
                          Text(
                            "\$120",
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontFamily: Typo.semiBold,
                                fontSize: 22.sp),
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
                            "Date",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "25 Feb, 2022",
                            style: TextStyle(
                                color: AppColors.GreyTExtColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.DividarColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "08:30 AM",
                            style: TextStyle(
                                color: AppColors.GreyTExtColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.DividarColor,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "4517 Washington Ave. ",
                                style: TextStyle(
                                    color: AppColors.GreyTExtColor,
                                    fontFamily: Typo.medium,
                                    fontSize: 12.sp),
                              ),
                              Text(
                                "Manchester, Kentucky 39495",
                                style: TextStyle(
                                    color: AppColors.GreyTExtColor,
                                    fontFamily: Typo.medium,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.DividarColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Service Status",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "Accepted",
                            style: TextStyle(
                                color: AppColors.GreyTExtColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.DividarColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "*1",
                            style: TextStyle(
                                color: AppColors.GreyTExtColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                      Divider(
                        color: AppColors.DividarColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Payment Status",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                          Text(
                            "Pending",
                            style: TextStyle(
                                color: AppColors.GreyTExtColor,
                                fontFamily: Typo.medium,
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  SizedBox(
                    height: 45.h,
                    width: double.infinity,
                    child: FilledButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.pop();
                        showAssignHandyMan();
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Typo.medium,
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAssignHandyMan() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: AppColors.primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Assign Handyman",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: Typo.medium,
                        fontSize: 16.sp),
                  ),
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 380.h,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            Divider(
                              color: AppColors.DividarColor,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            Divider(
                              color: AppColors.DividarColor,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            Divider(
                              color: AppColors.DividarColor,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            Divider(
                              color: AppColors.DividarColor,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            Divider(
                              color: AppColors.DividarColor,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            Divider(
                              color: AppColors.DividarColor,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            assignhandyman(),
                            SizedBox(
                              height: 16.h,
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: FilledButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {
                        GoRouter.of(context).goNamed(Paymentscreen.id);
                      },
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: Typo.medium,
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row assignhandyman() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AssetUrl.igserviceimg2),
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Naomie Hackett",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: Typo.medium,
                  fontSize: 14.sp),
            ),
            Text(
              "Member since 2015",
              style: TextStyle(
                  color: AppColors.GreyTExtColor,
                  fontFamily: Typo.medium,
                  fontSize: 14.sp),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Booking",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropdownButtonFormField(
                  items: status
                      .map(
                        (e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ),
                      )
                      .toList(),
                  onChanged: (value) {}),
              SizedBox(
                height: 22.h,
              ),
              bookinglisttile(context),
              bookinglisttile(context),
              bookinglisttile(context),
            ],
          ),
        ),
      ),
    );
  }

  bookinglisttile(context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushNamed(BookingOnTap.id);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 24),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(
                0xffEBEBEB,
              ),
            )),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 130.h,
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(AssetUrl.igbuilding2),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10.h,
                  left: 10.w,
                  child: Container(
                    alignment: Alignment.center,
                    height: 26.h,
                    width: 71.w,
                    decoration: BoxDecoration(
                        color: Color(0xffEA2F2F),
                        borderRadius: BorderRadius.circular(170)),
                    child: Text(
                      "Pending",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: Typo.medium,
                          fontSize: 12.sp),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Floor Cleaning",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Typo.medium,
                      fontSize: 16.sp),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 24.h,
                  width: 52.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(43),
                  ),
                  child: Text(
                    "#123",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: Typo.semiBold,
                        fontSize: 14.sp),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Text(
                  "\$120",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontFamily: Typo.medium,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  "21% Off",
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: Typo.semiBold,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 14,
                  color: Color(0xff130F26),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "1901 Thornridge Cir. Shiloh, Hawaii 81063",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontFamily: Typo.medium,
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  size: 14,
                  color: Color(0xff130F26),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "02 Febuary, 2022 At ",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontFamily: Typo.medium,
                      fontSize: 12.sp),
                ),
                Text(
                  "8:30 AM ",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: Typo.medium,
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.person_outline_rounded,
                  size: 14,
                  color: Color(0xff130F26),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Arlene McCoy",
                  style: TextStyle(
                      color: AppColors.textColor,
                      fontFamily: Typo.medium,
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Divider(
              color: Color(0xffEBEBEB),
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    )),
                    onPressed: () {
                      showBookingSummary();
                    },
                    child: Text("Accept",
                        style: TextStyle(
                            fontFamily: Typo.medium, fontSize: 14.sp)),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: FilledButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xffF6F7F9),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Decline",
                      style: TextStyle(
                          color: Color(0xff1C1F34),
                          fontFamily: Typo.medium,
                          fontSize: 14.sp),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}