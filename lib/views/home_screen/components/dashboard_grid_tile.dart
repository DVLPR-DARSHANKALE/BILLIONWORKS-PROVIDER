import 'package:provider/consts/packages.dart';

Container DashboarGrid({value, text, icon}) {
  return Container(
    padding: EdgeInsets.symmetric(
      horizontal: 16,
    ),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xffEBEBEB)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                  color: AppColors.primaryColor,
                  fontFamily: Typo.semiBold,
                  fontSize: 22.sp),
            ),
            Text(
              text,
              style: TextStyle(
                  color: AppColors.GreyTExtColor,
                  fontFamily: Typo.medium,
                  fontSize: 12.sp),
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: Color(
            0xffF6F7F9,
          ),
          child: Image.asset(
            icon,
            color: AppColors.primaryColor,
            scale: 3,
          ),
        )
      ],
    ),
  );
}
