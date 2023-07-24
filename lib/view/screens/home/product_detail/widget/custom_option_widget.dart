import 'package:e_commerce/view/widgets/custem_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOptionWidget extends StatelessWidget {
  const CustomOptionWidget({
    super.key,
    required this.text,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  final String text;
  final List<DropdownMenuItem<Object>>? items;
  final String? value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                txt: text,
                fontSize: 14.sp,
              ),
              SizedBox(
                width: 30.w,
                child: DropdownButton(
                  value: value,
                  items: items,
                  onChanged: (value) {
                    onChanged(value);
                  },
                  icon: Container(),
                  dropdownColor: Colors.white,
                  underline: Container(),
                  isExpanded: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
