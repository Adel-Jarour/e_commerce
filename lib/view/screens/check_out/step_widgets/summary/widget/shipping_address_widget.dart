import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShippingAddressWidget extends StatelessWidget {
  ShippingAddressWidget({Key? key}) : super(key: key);

  final CheckOutController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DivAddressWidget(),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      txt: Strings.shippingAddressCheckout,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomText(
                      txt:
                          "${controller.street1.text}, ${controller.street2.text}\n${controller.state.text}, ${controller.city.text}, ${controller.country.text}",
                      fontSize: 16.sp,
                      height: 1.5,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    CustomTextButton(
                      txt: Strings.changeButton,
                      onTap: () {
                        controller.backStep();
                      },
                      fontSize: 15.sp,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.check_circle,
                color: ColorConst.primaryColor,
                size: 30.r,
              )
            ],
          ),
        ),
        const DivAddressWidget(),
      ],
    );
  }
}

class DivAddressWidget extends StatelessWidget {
  const DivAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: const Color(0xffBDC4CC).withOpacity(.5),
      thickness: 1,
      height: 0,
    );
  }
}
