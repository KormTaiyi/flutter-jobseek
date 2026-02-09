import 'package:flutter/material.dart';
import 'package:jobseek/shared/themes.dart';

class OtherMethod extends StatelessWidget {
  final String? title;
  final List<String> icons;
  const OtherMethod({super.key, required this.title, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: Divider(thickness: 2, color: Colors.grey)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title!,
                style: TextStyle(fontSize: AppFonts.font16, color: Colors.black),
              ),
            ),
            const Expanded(child: Divider(thickness: 2, color: Colors.grey)),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: icons.map((iconPath) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: InkWell(
                onTap: () => {},
                child: Image.asset(iconPath, height: 30, width: 30),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
