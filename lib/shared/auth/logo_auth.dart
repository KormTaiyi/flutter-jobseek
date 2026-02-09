import 'package:flutter/material.dart';
import 'package:jobseek/shared/themes.dart';

class LogoAuth extends StatelessWidget {
  final String? subtitle;
  final String? title;
  final String logoPath;

  const LogoAuth({
    super.key,
    this.title,
    this.subtitle,
    this.logoPath = "assets/images/logo.png",
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(logoPath, height: 140, width: 140, fit: BoxFit.cover),
        SizedBox(height: 20),
        Text(
          title!,
          style: TextStyle(
            fontSize: AppFonts.font30,
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
        ),
        Text(subtitle!),
      ],
    );
  }
}
