import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.onTap,
    required this.title,
    required this.image,
    this.logout = false,
  });

  final Function onTap;
  final String title;
  final String image;
  final bool logout;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            onTap();
          },
          leading: Container(
            height: 40.h,
            width: 40.w,
            padding: EdgeInsetsDirectional.all(5.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: const Color(0xff00C569).withAlpha(12),
              image: DecorationImage(
                image: AssetImage(image),
                scale: 1,
              ),
            ),
          ),
          title: CustomText(
            txt: title,
            fontSize: 18.sp,
          ),
          trailing: logout
              ? null
              : Icon(
                  Icons.arrow_forward_ios,
                  size: 18.r,
                  color: Colors.black,
                ),
          contentPadding: EdgeInsetsDirectional.only(
            end: 23.5.w,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
