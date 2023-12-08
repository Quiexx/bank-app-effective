import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppColors.dart';

class BankAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BankAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.backGroundPrimary),
      child: const Padding(
        padding: EdgeInsets.only(top: 64, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.clear, color: AppColors.tabsPrimary),
            Image(image: AssetImage("images/ic_24_arrow_right_square.png"))
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(84.0);
}