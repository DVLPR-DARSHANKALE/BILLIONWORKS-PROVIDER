import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/consts/AssetUrl.dart';
import 'package:provider/consts/colorpallate.dart';
import 'package:provider/views/shared_widgets/services_grid_tile.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/packages.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  static String id = "ServiceListScreen";

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  bool gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Service List",
          style: TextStyle(
              color: Colors.white, fontFamily: Typo.medium, fontSize: 18.sp),
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              gridView = !gridView;
              setState(() {});
            },
            icon: SvgPicture.asset(
                gridView ? AssetUrl.igflitter : AssetUrl.igCategory),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: "Search here...",
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                child: gridView
                    ? GridView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 245.h,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        children: List.generate(
                          10,
                          (index) => servicesGridTile(context),
                        ))
                    : ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                          6,
                          (index) => servicesListTile(),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container servicesListTile() {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xfff6f7f9),
      ),
      height: 130.h,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 130.h,
                width: 124.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      AssetUrl.igCarpenterPhoto,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  alignment: Alignment.center,
                  height: 26.h,
                  width: 48.w,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "\$150",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: Typo.semiBold,
                        fontSize: 14.sp),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      VxRating(
                        onRatingUpdate: (value) {},
                        selectionColor: Colors.yellow.shade600,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "4.3",
                        style: TextStyle(
                            color: AppColors.GreyTExtColor,
                            fontFamily: Typo.semiBold,
                            fontSize: 12.sp),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Fixing Smart Devices",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: Typo.medium,
                        fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: Image.asset(AssetUrl.iguserimg),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Emma Grate",
                        style: TextStyle(
                            color: AppColors.GreyTExtColor,
                            fontFamily: Typo.medium,
                            fontSize: 12.sp),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
