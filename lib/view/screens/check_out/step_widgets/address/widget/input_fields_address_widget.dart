import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/check_out/check_out_controller.dart';
import 'package:e_commerce/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class InputFieldsAddressWidget extends StatelessWidget {
  const InputFieldsAddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutController>(builder: (controller) {
      return Form(
        key: controller.formKey,
        child: Column(
          children: [
            CustomTextFormField(
              onEditingComplete: () {
                controller.street2FocusNode.requestFocus();
              },
              hintTxt: Strings.street1TextField,
              controller: controller.street1,
              focusNode: controller.street1FocusNode,
            ),
            SizedBox(
              height: 38.h,
            ),
            CustomTextFormField(
              onEditingComplete: () {
                controller.cityFocusNode.requestFocus();
              },
              hintTxt: Strings.street2TextField,
              controller: controller.street2,
              focusNode: controller.street2FocusNode,
            ),
            SizedBox(
              height: 38.h,
            ),
            CustomTextFormField(
              onEditingComplete: () {
                controller.stateFocusNode.requestFocus();
              },
              hintTxt: Strings.cityTextField,
              controller: controller.city,
              focusNode: controller.cityFocusNode,
            ),
            SizedBox(
              height: 38.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    onEditingComplete: () {
                      controller.countryFocusNode.requestFocus();
                    },
                    hintTxt: Strings.stateTextField,
                    controller: controller.state,
                    focusNode: controller.stateFocusNode,
                  ),
                ),
                SizedBox(
                  width: 37.w,
                ),
                Expanded(
                  child: CustomTextFormField(
                    onEditingComplete: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    hintTxt: Strings.countryTextField,
                    controller: controller.country,
                    focusNode: controller.countryFocusNode,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
