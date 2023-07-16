import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              txt: Strings.welcome,
              fontSize: 30.sp,
              fontWeight: FontWeight.w600,
            ),
            CustomTextButton(
              txt: Strings.signUpNavButton,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomText(
          txt: Strings.signInToContinue,
          color: ColorConst.greyTextColor,
          fontSize: 14.sp,
        ),
        SizedBox(
          height: 48.h,
        ),
      ],
    );
  }
}
