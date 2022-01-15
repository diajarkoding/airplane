import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final EdgeInsets margin;
  final Function() onPressed;

  const CustomButton(
      {Key? key,
      required this.title,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17))),
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          )),
    );
  }
}
