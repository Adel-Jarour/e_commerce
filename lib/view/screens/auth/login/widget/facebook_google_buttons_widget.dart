import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/view/widgets/custom_social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FacebookGoogleButtonsWidget extends StatelessWidget {
  const FacebookGoogleButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSocialButton(
          onTap: () {},
          txt: Strings.facebookButton,
          image: ImagesConst.facebook,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomSocialButton(
          onTap: () {},
          txt: Strings.googleButton,
          image: ImagesConst.google,
        ),
      ],
    );
  }
}