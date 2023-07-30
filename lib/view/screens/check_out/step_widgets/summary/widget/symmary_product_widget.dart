import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/constance/list_const.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryProductWidget extends StatelessWidget {
  const SummaryProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: ListConst.cartImages
            .map(
              (e) => Container(
                width: 120.w,
                margin: EdgeInsetsDirectional.only(
                  start: (ListConst.cartImages.indexOf(e) == 0) ? 16.w : 0,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(end: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 120.w,
                        height: 120.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image: DecorationImage(
                            image: AssetImage(
                              e,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomText(
                        txt: ListConst
                            .cartTitles[ListConst.cartImages.indexOf(e)],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const CustomText(
                        txt: '\$2500',
                        color: ColorConst.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
