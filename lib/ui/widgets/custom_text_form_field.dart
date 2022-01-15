import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String title;
  final String hintText;
  bool obscureText;
  final bool suffixIcon;
  final TextEditingController controller;

  CustomTextFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon = false,
      required this.controller})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    icon() {
      switch (widget.suffixIcon) {
        case false:
          return null;
        case true:
          return GestureDetector(
              onTap: () {
                setState(() {
                  widget.obscureText = !widget.obscureText;
                });
              },
              child: widget.obscureText
                  ? Icon(
                      Icons.visibility_off,
                      color: kGreyColor,
                    )
                  : Icon(
                      Icons.visibility,
                      color: kPrimaryColor,
                    ));
        default:
          return null;
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: blackTextStyle.copyWith(fontWeight: regular),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: icon(),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  borderSide: BorderSide(color: kBlackColor)),
            ),
          )
        ],
      ),
    );
  }
}
