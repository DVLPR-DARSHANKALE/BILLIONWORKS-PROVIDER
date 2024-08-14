import 'package:go_router/go_router.dart';
import 'package:provider/consts/packages.dart';
import 'package:provider/views/servicedetails.dart';

servicesGridTile(context) {
  return GestureDetector(
    onTap: () {
      GoRouter.of(context).goNamed(Servicedetails.id);
    },
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xffF6F7F9), borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(Asseturl.igpainterphoto),
              Positioned(
                top: 86,
                right: 12,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "\$150",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: typo.WorkSansSemiBold,
                        fontSize: 12.sp),
                  ),
                  width: 44.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.mainColor,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  alignment: Alignment.center,
                  width: 49.w,
                  height: 15.h,
                  child: Text(
                    "PAINTING",
                    style: TextStyle(
                        color: AppColor.mainColor,
                        fontFamily: typo.WorkSansSemiBold,
                        fontSize: 8.sp),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        color: AppColor.GreyTExtColor,
                        fontFamily: typo.WorkSansSemiBold,
                        fontSize: 12.sp),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Painting For \nBeautiful Homes...",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: typo.WorkSansMedium,
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15,
                    child: Image.asset(Asseturl.iguserimg),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Emma Grate",
                    style: TextStyle(
                        color: AppColor.GreyTExtColor,
                        fontFamily: typo.WorkSansMedium,
                        fontSize: 12.sp),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}
