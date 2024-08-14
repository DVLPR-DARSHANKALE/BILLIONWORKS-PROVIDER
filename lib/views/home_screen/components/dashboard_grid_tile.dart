import 'package:provider/consts/packages.dart';

Container DashboarGrid({value, text, icon}) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xffEBEBEB)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                  color: AppColor.mainColor,
                  fontFamily: typo.WorkSansSemiBold,
                  fontSize: 22.sp),
            ),
            Text(
              text,
              style: TextStyle(
                  color: AppColor.GreyTExtColor,
                  fontFamily: typo.WorkSansMedium,
                  fontSize: 12.sp),
            ),
          ],
        ),
        SizedBox(
          width: 12.w,
        ),
        CircleAvatar(
          backgroundColor: Color(
            0xffF6F7F9,
          ),
          child: Image.asset(
            icon,
            color: AppColor.mainColor,
            scale: 3,
          ),
        )
      ],
    ),
  );
}
