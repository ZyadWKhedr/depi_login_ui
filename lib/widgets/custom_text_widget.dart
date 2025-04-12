import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? letterSpacing;
  final double? lineHeight;
  final TextDecoration? decoration;

  const CustomText({
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.letterSpacing,
    this.lineHeight,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing,
        height: lineHeight,
        decoration: decoration,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.visible,
    );
  }
}