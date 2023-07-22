import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductDetailContentWidget extends StatelessWidget {
  ProductDetailContentWidget({Key? key}) : super(key: key);

  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            txt: Strings.productDetailTitleHome,
            fontSize: 26.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 25.1.h,
          ),
          Row(
            children: [
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffEBEBEB),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          txt: Strings.sizeHome,
                          fontSize: 14.sp,
                        ),
                        SizedBox(
                          width: 30.w,
                          child: Expanded(
                            child: DropdownButton(
                              value: controller.selectedSize,
                              items: controller.sizeOptions
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: CustomText(
                                        txt: e,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        textAlign: TextAlign.end,
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (String? value) {
                                controller.changeSelectedValue(value);
                              },
                              icon: Container(),
                              dropdownColor: Colors.white,
                              underline: Container(),
                              isExpanded: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 23.w,
              ),
              Expanded(
                child: Container(
                  height: 40.h,
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffEBEBEB),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        txt: Strings.colourHome,
                        fontSize: 14.sp,
                      ),
                      CustomText(
                        txt: controller.selectedSize,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 33.7.h,
          ),
          CustomText(
            txt: Strings.detailsHome,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 15.3.h,
          ),
          CustomText(
            txt: controller.detailDesc,
            fontSize: 16.sp,
            height: 2,
          ),
        ],
      ),
    );
  }
}
