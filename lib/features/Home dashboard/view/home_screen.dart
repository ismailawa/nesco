import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nesco_app/constants/colors.dart';

import '../../../widgets/customContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 189.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29.w),
                gradient: LinearGradient(
                  colors: [
                    lblue.withOpacity(0.7),
                    lblue.withOpacity(0.5),
                    lblue,
                    lblue
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0.9, 9],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('METER NO:',
                                style: GoogleFonts.archivo(
                                    color: black, fontSize: 16.sp)),
                            Text('8909324230502',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                    fontSize: 32.sp)),
                            Text('Phone: 08316814457',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w400,
                                    color: black,
                                    fontSize: 12.sp))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Type:',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w700,
                                    color: black,
                                    fontSize: 16.sp)),
                            Text('pre-paid',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w400,
                                    color: black,
                                    fontSize: 12.sp))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Last Login:',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w600,
                                    color: white,
                                    fontSize: 16.sp)),
                            Text('15 December, 2020',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w700,
                                    color: white,
                                    fontSize: 12.sp)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('District:',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w700,
                                    color: black,
                                    fontSize: 16.sp)),
                            Text('597',
                                style: GoogleFonts.archivo(
                                    fontWeight: FontWeight.w800,
                                    color: black,
                                    fontSize: 36.sp))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            const CustomContainer(
                title: 'Self Payment', icon: Icon(Icons.bolt)),
            SizedBox(height: 10.h),
            const CustomContainer(
                title: 'Gift Payment', icon: Icon(Icons.bolt)),
            SizedBox(height: 10.h),
            const CustomContainer(
                title: 'Vendor Payment', icon: Icon(Icons.bolt)),
            SizedBox(height: 20.h),
            Container(
              height: 46.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.w), color: lblue),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Transactions',
                        style: GoogleFonts.archivo(
                            fontWeight: FontWeight.w700,
                            color: white,
                            fontSize: 16.sp)),
                    Text('View All',
                        style: GoogleFonts.archivo(
                            fontWeight: FontWeight.w700,
                            color: white,
                            fontSize: 12.sp))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text('Self Payments',
                style: GoogleFonts.archivo(
                    fontWeight: FontWeight.w700,
                    color: lblue,
                    fontSize: 13.sp)),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Meter No. 123442r5WTQ',
                    style: GoogleFonts.archivo(
                        fontWeight: FontWeight.w800,
                        color: black,
                        fontSize: 12.sp)),
                Text('₦546,729.0942',
                    style: GoogleFonts.archivo(
                        fontWeight: FontWeight.w700,
                        color: black,
                        fontSize: 12.sp))
              ],
            ),
            const Divider(
              color: black,
              height: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text('Self Payments',
                style: GoogleFonts.archivo(
                    fontWeight: FontWeight.w700,
                    color: lblue,
                    fontSize: 13.sp)),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Meter No. 123442r5WTQ',
                    style: GoogleFonts.archivo(
                        fontWeight: FontWeight.w800,
                        color: black,
                        fontSize: 12.sp)),
                Text('₦546,729.0942',
                    style: GoogleFonts.archivo(
                        fontWeight: FontWeight.w700,
                        color: black,
                        fontSize: 12.sp))
              ],
            ),
            const Divider(
              color: black,
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}
