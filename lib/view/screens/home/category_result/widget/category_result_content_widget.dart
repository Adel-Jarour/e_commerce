import 'package:e_commerce/constance/list_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:e_commerce/view/widgets/custom_device_detail.dart';

class CategoryResultContentWidget extends StatelessWidget {
  const CategoryResultContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      itemCount: ListConst.bestSellingTitles.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 164.w / 319.h,
        crossAxisSpacing: 15.w,
        mainAxisSpacing: 20.h,
      ),
      itemBuilder: (context, index) {
        return CustomDeviceDetail(
          image: ListConst.bestSellingImages[index],
          title: ListConst.bestSellingTitles[index],
          newDevice: ListConst.newDevices[index],
          onTap: () {},
        );
      },
    );
  }
}
