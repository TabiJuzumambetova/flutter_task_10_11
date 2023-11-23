import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task_10_11/screens/second_screen.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton(
      {super.key, required this.text, this.bg = Colors.white,
      this.height=55,this.width=343,this.fontSize=18,this.fontWeight=FontWeight.w700,this.textColor=Colors.white});
      final Color textColor;
  final Color bg;
  final String text;
  final int width;
  final int height;
  final  double  fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondScreen()));
          
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: bg,
            shadowColor: Colors.transparent,
            side: BorderSide(color: Colors.white.withOpacity(0.70)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          text,
          style: TextStyle(
              color:textColor, fontSize: fontSize, fontWeight: fontWeight),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
