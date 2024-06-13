import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';

class AppTypography{
  get heading2 => TextStyle(
    fontWeight: FontWeight.w700,
    color: AppStyle.color.primaryText,
    fontSize: 20,
    height: 30,
    letterSpacing: -0.03,
  );
  get heading3 => TextStyle(
    fontWeight: FontWeight.w700,
    color: AppStyle.color.primaryText,
    fontSize: 16,
    height: 24,
    letterSpacing: -0.03,
  );
  get heading4 => TextStyle(
    fontWeight: FontWeight.w700,
    color: AppStyle.color.primaryText,
    fontSize: 14,
    height: 21,
    letterSpacing: -0.03,
  );
  get body1 => TextStyle(
    fontWeight: FontWeight.w400,
    color: AppStyle.color.primaryText,
    fontSize: 16,
    height: 24,
  );
  get body2 => TextStyle(
    fontWeight: FontWeight.w400,
    color: AppStyle.color.hintText,
    fontSize: 14,
    height: 21,
  );
  get body3 => TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 18,
  );
}