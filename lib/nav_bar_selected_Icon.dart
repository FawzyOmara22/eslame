 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eslame/app_theme.dart';

class NavBarSelectedIcon extends StatelessWidget {
  String imageName;
  NavBarSelectedIcon({required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(66),
        color: AppTheme.black.withValues(alpha:0.6),),
      child: SvgPicture.asset('assets/icons/$imageName.svg',height: 22,width: 22,fit: BoxFit.fill,
      colorFilter: ColorFilter.mode(AppTheme.width,BlendMode.srcIn ),));
  }
}