import 'package:e_commerce/config/translations/strings_enum.dart';
import 'package:e_commerce/constance/images_const.dart';
import 'package:e_commerce/view/screens/account/account/widget/custom_list_tile.dart';
import 'package:flutter/material.dart';


class MenusWidget extends StatelessWidget {
  const MenusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(
          onTap: () {},
          title: Strings.editProfileAccount,
          image: ImagesConst.editProfileAccount,
        ),
        CustomListTile(
          onTap: () {},
          title: Strings.shippingAddressAccount,
          image: ImagesConst.shippingAddressAccount,
        ),
        CustomListTile(
          onTap: () {},
          title: Strings.orderHistoryAccount,
          image: ImagesConst.orderHistoryAccount,
        ),
        CustomListTile(
          onTap: () {},
          title: Strings.cardsAccount,
          image: ImagesConst.cardsAccount,
        ),
        CustomListTile(
          onTap: () {},
          title: Strings.notificationsAccount,
          image: ImagesConst.notificationsAccount,
        ),
        CustomListTile(
          onTap: () {},
          title: Strings.logOutAccount,
          image: ImagesConst.logoutAccount,
          logout: true,
        ),
      ],
    );
  }
}
