import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: BoxDecoration(
              border: Border.all(color: offBlue),
              color: offBlack,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(color: white),
            ),
          )),
    );
  }
}
