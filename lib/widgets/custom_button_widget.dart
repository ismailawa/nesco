import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: MediaQuery.of(context).size.height * 0.059,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(color: offBlue),
              color: lblue,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.roboto(
                  color: white, fontWeight: FontWeight.w800, fontSize: 18.sp),
            ),
          )),
    );
  }
}
