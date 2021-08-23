import 'package:flutter/widgets.dart';

class FitxStyles {
  // H1
  static const TextStyle h1Bold = _TextStyle.bold(26);
  static const TextStyle h1SemiBold = _TextStyle.semiBold(26);
  static const TextStyle h1Medium = _TextStyle.medium(26);
  static const TextStyle h1Regular = _TextStyle.regular(26);

  // H2
  static const TextStyle h2Bold = _TextStyle.bold(24);
  static const TextStyle h2SemiBold = _TextStyle.semiBold(24);
  static const TextStyle h2Medium = _TextStyle.medium(24);
  static const TextStyle h2Regular = _TextStyle.regular(24);

  // H3
  static const TextStyle h3Bold = _TextStyle.bold(22);
  static const TextStyle h3SemiBold = _TextStyle.semiBold(22);
  static const TextStyle h3Medium = _TextStyle.medium(22);
  static const TextStyle h3Regular = _TextStyle.regular(22);

  // H4
  static const TextStyle h4Bold = _TextStyle.bold(20);
  static const TextStyle h4SemiBold = _TextStyle.semiBold(20);
  static const TextStyle h4Medium = _TextStyle.medium(20);
  static const TextStyle h4Regular = _TextStyle.regular(20);

  // Subtitle
  static const TextStyle subtitleBold = _TextStyle.bold(18);
  static const TextStyle subtitleSemiBold = _TextStyle.semiBold(18);
  static const TextStyle subtitleMedium = _TextStyle.medium(18);
  static const TextStyle subtitleRegular = _TextStyle.regular(18);

  // Large Text
  static const TextStyle largeTextBold = _TextStyle.bold(16);
  static const TextStyle largeTextSemiBold = _TextStyle.semiBold(16);
  static const TextStyle largeTextMedium = _TextStyle.medium(16);
  static const TextStyle largeTextRegular = _TextStyle.regular(16);

  // Medium Text
  static const TextStyle mediumTextBold = _TextStyle.bold(14);
  static const TextStyle mediumTextSemiBold = _TextStyle.semiBold(14);
  static const TextStyle mediumTextMedium = _TextStyle.medium(14);
  static const TextStyle mediumTextRegular = _TextStyle.regular(14);

  // Small Text
  static const TextStyle smallTextBold = _TextStyle.bold(12);
  static const TextStyle smallTextSemiBold = _TextStyle.semiBold(12);
  static const TextStyle smallTextMedium = _TextStyle.medium(12);
  static const TextStyle smallTextRegular = _TextStyle.regular(12);

  // Caption
  static const TextStyle captionBold = _TextStyle.bold(10);
  static const TextStyle captionSemiBold = _TextStyle.semiBold(10);
  static const TextStyle captionMedium = _TextStyle.medium(10);
  static const TextStyle captionRegular = _TextStyle.regular(10);

  // Link
  static const TextStyle bigLink = _TextStyle.link(14);
  static const TextStyle mediumLink = _TextStyle.link(12);
  static const TextStyle smallLink = _TextStyle.link(10);

  FitxStyles._();
}

class _TextStyle extends TextStyle {
  const _TextStyle.bold(double size) : this._(size, FontWeight.w700);
  const _TextStyle.semiBold(double size) : this._(size, FontWeight.w600);
  const _TextStyle.medium(double size) : this._(size, FontWeight.w500);
  const _TextStyle.regular(double size) : this._(size, FontWeight.w400);
  const _TextStyle.link(double size)
      : this._(size, FontWeight.w500, TextDecoration.underline);

  const _TextStyle._(double size, FontWeight weight,
      [TextDecoration? decoration])
      : super(
          fontSize: size,
          height: _height,
          fontWeight: weight,
          fontFamily: _fontFamily,
          package: _package,
          decoration: decoration,
        );
}

const _fontFamily = 'Poppins';
const _package = 'fitx_ui';
const _height = 1.5;
