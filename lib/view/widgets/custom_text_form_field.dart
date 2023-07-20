import 'package:e_commerce/constance/color_const.dart';
import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TextFieldType { auth, search }

class CustomTextFormField extends StatelessWidget {
  final String? hintTxt;
  final String? label;
  final String? errorText;
  final FocusNode? focusNode;
  final String? prefix;
  final String? initialValue;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function? onPressedPrefixIcon;
  final Function onEditingComplete;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final bool? obscureText;
  final bool? prefixVisible;
  final bool? enabled;
  final bool autofocus;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? prefixScale;
  final double? hintFontSize;
  final TextDirection? textDirection;
  final TextFieldType? textFieldType;

  const CustomTextFormField({
    super.key,
    required this.onEditingComplete,
    this.hintTxt,
    this.label,
    this.onPressedPrefixIcon,
    this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines = 1,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor = Colors.white,
    this.horizontalPadding,
    this.verticalPadding,
    this.prefixIconColor,
    this.suffixIconColor,
    this.enabled = true,
    this.initialValue,
    this.prefix,
    this.focusNode,
    this.prefixScale,
    this.prefixVisible = true,
    this.errorText,
    this.textDirection = TextDirection.rtl,
    this.autofocus = false,
    this.hintFontSize,
    this.textFieldType = TextFieldType.auth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        (textFieldType == TextFieldType.auth)
            ? CustomText(
                txt: hintTxt,
                color: ColorConst.greyTextColor,
                fontSize: 14.sp,
              )
            : const SizedBox(),
        TextFormField(
          focusNode: focusNode,
          autofocus: autofocus,
          initialValue: initialValue,
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter valid data";
            }
            return null;
          },
          onEditingComplete: () {
            onEditingComplete();
          },
          onTapOutside: (x) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          minLines: minLines,
          maxLines: maxLines,
          maxLength: maxLength,
          style: TextStyle(
            fontFamily: "Rubik",
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            errorText: errorText,
            errorStyle: TextStyle(
              fontFamily: "Rubik",
              color: Colors.red,
              fontSize: 13.sp,
            ),
            fillColor: (textFieldType == TextFieldType.auth)
                ? fillColor
                : const Color(0xff000000).withAlpha(12),
            filled: true,
            focusedBorder: (textFieldType == TextFieldType.auth)
                ? UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConst.primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                    borderSide: BorderSide.none,
                  ),
            enabledBorder: (textFieldType == TextFieldType.auth)
                ? UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffDDDDDD),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  )
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45.0),
                    borderSide: BorderSide.none,
                  ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            alignLabelWithHint: true,
            contentPadding: EdgeInsetsDirectional.only(
              end: horizontalPadding ?? 8.w,
              top: verticalPadding ?? 19.h,
              bottom: verticalPadding ?? 19.h,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: (suffixIcon != null)
                ? Padding(
                    padding: EdgeInsetsDirectional.only(end: 40.w),
                    child: suffixIcon,
                  )
                : null,
            suffixIconColor: suffixIconColor ?? Colors.white,
            prefixIconColor: prefixIconColor ?? Colors.white,
          ),
          enabled: enabled,
          keyboardType: keyboardType,
          obscureText: obscureText!,
        ),
      ],
    );
  }
}
