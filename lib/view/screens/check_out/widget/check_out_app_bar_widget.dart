import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/view/widgets/back_button.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckOutAppBarWidget extends StatelessWidget {
  const CheckOutAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 80.h,
      backgroundColor: ColorConst.scaffoldBackgroundColor,
      elevation: 0,
      pinned: true,
      snap: false,
      floating: false,
      automaticallyImplyLeading: false,
      leading: const BackButtonWidget(),
      title: CustomText(
        txt: Strings.checkout,
        fontSize: 20.sp,
      ),
      centerTitle: true,
    );
  }
}
