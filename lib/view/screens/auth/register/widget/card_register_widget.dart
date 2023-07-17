import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/view/screens/auth/register/widget/register_input_fields_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CardRegisterWidget extends StatelessWidget {
  const CardRegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 15.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 15,
              color: const Color(0xff242424).withAlpha(20),
              spreadRadius: 2),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            txt: Strings.signUpAuth,
            fontSize: 30.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 47.h,),
          RegisterInputFieldsWidget(),
          CustomButton(
            txt: Strings.signUpButton,
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}



