import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:e_commerce/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({
    Key? key,
    required this.onTap,
    required this.txt,
    required this.image,
  }) : super(key: key);

  final Function onTap;
  final String image;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      txt: "",
      onTap: () {
        onTap();
      },
      colorButton: Colors.white,
      border: Border.all(
        color: const Color(0xffDDDDDD),
        width: 1,
      ),
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
          ),
          CustomText(
            txt: txt,
            fontSize: 15.sp,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
