import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({this.isResponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      width: width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("img/button-one.png")],
      ),
    );
  }
}
