import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/data/cloud/api_call_status.dart';
import 'package:e_commerce/data/cloud/api_const.dart';
import 'package:e_commerce/data/cloud/request_type.dart';
import 'package:e_commerce/routes/app_routes.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  ApiCallStatus apiCallStatus = ApiCallStatus.holding;

  Future performLogout(BuildContext context) async {
    Get.defaultDialog(
      title: Strings.logoutDialog,
      contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            txt: Strings.areYouSureDialog,
            fontSize: 17.sp,
            height: 1.4,
            color: ColorConst.greyTextColor,
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  txt: Strings.yesButton,
                  onTap: () async {
                    Navigator.pop(context);
                    await logout();
                    Get.offAllNamed(Routes.login);
                  },
                  colorButton: Colors.transparent,
                  colorTxt: Colors.red,
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: CustomButton(
                  txt: Strings.cancelButton,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future logout() async {
    await BaseClient.safeApiCall(
      ApiConst.logout,
      RequestType.get,
      onLoading: () {
        apiCallStatus = ApiCallStatus.loading;
        update();
      },
      onSuccess: (response) {
        apiCallStatus = ApiCallStatus.success;
        update(); // update ui
        Get.offAllNamed(Routes.login);
      },
      onError: (error) {
        BaseClient.handleApiError(error);
        apiCallStatus = ApiCallStatus.error;
        update();
      },
    );
  }
}
