import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final Icon? icon;
  const CustomContainer({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: offBlue),
          color: offBlue),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Container(
              height: 45,
              // width: 100,
              decoration: BoxDecoration(
                  color: lblue,
                  border: Border.all(color: white),
                  boxShadow: const [
                    BoxShadow(
                      color: white,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.archivo(
                        color: white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: icon!,
          )
        ],
      ),
    );
  }
}
