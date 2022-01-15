import 'package:flutter/material.dart';

class PhotosItem extends StatelessWidget {
  final String imageUrl;
  const PhotosItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83,
      height: 80,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(18)),
    );
  }
}
