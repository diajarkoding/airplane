import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String text;
  const FacilityItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/icon_check.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Text(
            text,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
