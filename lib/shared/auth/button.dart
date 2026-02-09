import 'package:flutter/material.dart';
import 'package:jobseek/shared/themes.dart';

class ShareButton extends StatelessWidget {
  final String label;
  final Widget link;
  const ShareButton({super.key, required this.label, required this.link});

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
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => link),
          );
        },
        child: Text(label, style: TextStyle(fontSize: AppFonts.font16)),
      ),
    );
  }
}
