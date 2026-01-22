import 'package:flutter/material.dart';
import 'package:jobseek/shared/themes.dart';

class ShareButton extends StatelessWidget {
  final String label;
  const ShareButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(label, style: TextStyle(fontSize: AppFonts.body)),
      ),
    );
  }
}
