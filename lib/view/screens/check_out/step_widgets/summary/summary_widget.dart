import 'package:e_commerce/view/screens/check_out/step_widgets/summary/widget/shipping_address_widget.dart';
import 'package:e_commerce/view/screens/check_out/step_widgets/summary/widget/symmary_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SummaryProductWidget(),
        SizedBox(
          height: 25.h,
        ),
        ShippingAddressWidget(),
      ],
    );
  }
}
