import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckoutBottomNavWidget extends StatelessWidget {
  CheckoutBottomNavWidget({Key? key}) : super(key: key);

  final CheckOutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 30.w, vertical: 17.h),
      child: (controller.currentStepIndex == 0)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  txt: Strings.nextButton,
                  onTap: () {
                    controller.nextStep();
                  },
                  borderRadius: 4.0,
                  width: 146.w,
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: CustomButton(
                    txt: Strings.backButton,
                    onTap: () {
                      controller.backStep();
                    },
                    borderRadius: 4.0,
                    border: Border.all(
                      color: ColorConst.primaryColor,
                    ),
                    colorButton: Colors.white,
                    colorTxt: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 23.w,
                ),
                Expanded(
                  child: CustomButton(
                    txt: Strings.nextButton,
                    onTap: () {
                      controller.nextStep();
                    },
                    borderRadius: 4.0,
                  ),
                ),
              ],
            ),
    );
  }
}
