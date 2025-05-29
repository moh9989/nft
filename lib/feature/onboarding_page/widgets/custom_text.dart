import 'package:flutter/material.dart';
import 'package:nft/core/resourses/app_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
    final FontWeight? fontWeight;


  const CustomText({
    super.key,
    required this.text,
     this.size,
     this.color, this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight??FontWeight.normal,
        color: color,
        fontSize: size,
        fontFamily: AppFonts.sfProDisplay,
      ),
    );
  }
}
