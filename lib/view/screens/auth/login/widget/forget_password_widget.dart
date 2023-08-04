import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 19.9.h,
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: CustomTextButton(
            txt: Strings.forgotPasswordButton,
            color: ColorConst.greyTextColor,
            fontSize: 14.sp,
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
