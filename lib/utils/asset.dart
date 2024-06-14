import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Asset {
  static Widget svgAlarm({double? width, double? height}) => SvgPicture.asset(
        'assets/images/svg_alarm.svg',
        width: width,
        height: height,
      );

  static Widget svgAnnounce({double? width, double? height}) =>
      SvgPicture.asset(
        'assets/images/svg_announce.svg',
        width: width,
        height: height,
      );

  static Widget svgPill({double? width, double? height}) => SvgPicture.asset(
        'assets/images/svg_Icon-pill.svg',
        width: width,
        height: height,
      );

  static Widget svgMorning({double? width, double? height}) => SvgPicture.asset(
        'assets/images/svg_Time-Morning.svg',
        width: width,
        height: height,
      );

  static Widget svgNight({double? width, double? height}) => SvgPicture.asset(
        'assets/images/svg_Time-Night.svg',
        width: width,
        height: height,
      );

  static Widget svgNoon({double? width, double? height}) => SvgPicture.asset(
        'assets/images/svg_Time-Noon.svg',
        width: width,
        height: height,
      );

  static Widget iconHomeDefault({double? width, double? height}) =>
      SvgPicture.asset(
        'assets/images/svg_Icon-home-default.svg',
        width: width,
        height: height,
      );

  static Widget iconHomeSelected({double? width, double? height}) =>
      SvgPicture.asset(
        'assets/images/svg_Icon-home-selected.svg',
        width: width,
        height: height,
      );

  static Widget iconProfileDefault({double? width, double? height}) =>
      SvgPicture.asset(
        'assets/images/svg_Icon-my-default.svg',
        width: width,
        height: height,
      );

  static Widget iconProfileSelected({double? width, double? height}) =>
      SvgPicture.asset(
        'assets/images/svg_Icon-my-selected.svg',
        width: width,
        height: height,
      );
}
