import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/controller/home/product_detail_controller.dart';
import 'package:e_commerce/view/screens/home/product_detail/widget/custom_option_widget.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SizeColorWidget extends StatelessWidget {
  SizeColorWidget({
    super.key,
  });

  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomOptionWidget(
          text: Strings.sizeHome,
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
          onChanged: (value) {
            controller.changeSize(value);
          },
        ),
        SizedBox(
          width: 23.w,
        ),
        CustomOptionWidget(
          text: Strings.colourHome,
          value: controller.selectedColor,
          items: controller.colorsHex
              .map(
                (e) => DropdownMenuItem(
              value: e,
              child: ColorSquare(hexColor: e),
            ),
          )
              .toList(),
          onChanged: (value) {
            controller.changeColor(value);
          },
        ),
      ],
    );
  }
}



class ColorSquare extends StatelessWidget {
  const ColorSquare({required this.hexColor});

  final String hexColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22.w,
      height: 22.h,
      decoration: BoxDecoration(
        color: Color(int.parse(hexColor.replaceFirst('#', '0xff'))),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}

