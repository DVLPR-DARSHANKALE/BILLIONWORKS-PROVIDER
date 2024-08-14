import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/bookings_screen/booking_list.dart';
import 'package:provider/views/home_screen/home_screen.dart';
import 'package:provider/views/notification_screen/notification_screen.dart';
import 'package:provider/views/payment_screen/paymentscreen.dart';

class Home extends StatefulWidget {
  Home({super.key});

  static String id = "Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List icons = [
    AssetUrl.icHome,
    AssetUrl.icBookings,
    AssetUrl.icWallet,
    AssetUrl.icNotification,
  ];

  int selectedTabIndex = 0;

  List screens = [
    HomeScreen(),
    BookingList(),
    Paymentscreen(),
    NotificaionScreen()
  ];

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80.h,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            icons.length,
            (index) => IconButton(
              onPressed: () {
                selectedTabIndex = index;
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
                setState(() {});
              },
              icon: SvgPicture.asset(
                icons[index],
                color:
                    index == selectedTabIndex ? AppColors.primaryColor : null,
              ),
            ),
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          selectedTabIndex = value;
          setState(() {});
        },
        controller: pageController,
        children: [
          HomeScreen(),
          BookingList(),
          Paymentscreen(),
          NotificaionScreen()
        ],
      ),
    );
  }
}
