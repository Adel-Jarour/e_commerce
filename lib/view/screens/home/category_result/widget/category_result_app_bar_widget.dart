import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/controller/home/category_result_controller.dart';
import 'package:e_commerce/view/widgets/back_button.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryResultAppBarWidget extends StatelessWidget {
  CategoryResultAppBarWidget({Key? key}) : super(key: key);

  final CategoryResultController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)!.settings.arguments as String;
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
        txt: title,
        fontSize: 20.sp,
      ),
      centerTitle: true,
    );
  }
}
