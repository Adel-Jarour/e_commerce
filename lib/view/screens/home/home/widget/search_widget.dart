
import 'package:e_commerce/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(end: 16.w),
          child: CustomTextFormField(
            onEditingComplete: () {},
            hintTxt: '',
            textFieldType: TextFieldType.search,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.r,
            ),
          ),
        ),
        SizedBox(
          height: 44.h,
        ),
      ],
    );
  }
}
