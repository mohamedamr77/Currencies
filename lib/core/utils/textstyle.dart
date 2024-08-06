import 'package:flutter/material.dart';
class CustomTextStyle extends TextStyle{
    @override
  final Color? color;
    @override
  final double? fontSize;
    @override
  final FontWeight? fontWeight;
    @override
  final FontStyle? fontStyle;
    @override
  final String? fontFamily;
    const CustomTextStyle( {  this.color,  this.fontSize,  this.fontWeight,  this.fontStyle,   this.fontFamily});
}
