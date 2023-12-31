import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/auth/register_controller.dart';
import 'package:e_commerce/data/cloud/api_call_status.dart';
import 'package:e_commerce/view/components/my_widgets_animator.dart';
import 'package:e_commerce/view/screens/auth/register/widget/register_input_fields_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardRegisterWidget extends StatelessWidget {
  CardRegisterWidget({Key? key}) : super(key: key);

  final RegisterController controller = Get.find();

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
          SizedBox(
            height: 47.h,
          ),
          const RegisterInputFieldsWidget(),
          Align(
            alignment: AlignmentDirectional.center,
            child: CustomButton(
              txt: Strings.signUpButton,
              onTap: () async {
                await controller.performSignUp();
              },
              enabled: controller.apiCallStatus == ApiCallStatus.loading,
            ),
          ),
        ],
      ),
    );
  }
}
