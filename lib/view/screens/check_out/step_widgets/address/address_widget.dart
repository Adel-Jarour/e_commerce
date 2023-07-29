import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/screens/check_out/step_widgets/address/widget/input_fields_address_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(
      builder: (controller) => Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.check_circle,
              size: 30.r,
              color: ColorConst.primaryColor,
            ),
            title: CustomText(
              txt: Strings.billingAddressCheckout,
              fontSize: 14.sp,
              height: 1.2,
            ),
            contentPadding: EdgeInsetsDirectional.zero,
          ),
          SizedBox(
            height: 28.h,
          ),
          InputFieldsAddressWidget(),
        ],
      ),
    );
  }
}
