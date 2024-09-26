import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:mec2/core/const/const.dart';
import 'package:mec2/core/themes/light_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = 160,
    this.height = 60,
  });

  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: kLightPrimaryColor,
          backgroundColor: mainColor,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 10,
        ),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              text,
              style: GoogleFonts.oswald(
                // Use Mirandah font
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 20),
            Icon(
              FontAwesomeIcons.arrowRight,
              size: 13,
            )
          ]),
        ),
      ),
    );
  }
}
