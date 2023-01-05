import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBox extends StatelessWidget {
  final String color;
  final String headText;
  final String bodyText;
  final IconData icon;

  TabBox(this.color, this.headText, this.bodyText, this.icon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            decoration: BoxDecoration(
                color: color == 'blue' ? Colors.blue : Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 1),
                    blurRadius: 1.0,
                  ),
                ]),
            child: Padding(
              padding: EdgeInsets.all(15.sp),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color == 'blue' ? Colors.white : Colors.blue,
                      ),
                      child: Icon(
                        icon,
                        size: 50.sp,
                        color: color == 'blue' ? Colors.blue : Colors.white,
                      ),
                      alignment: Alignment.center,
                    ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    Text(
                      headText,
                      style: TextStyle(
                          color: color == 'blue' ? Colors.white : Colors.blue,
                          fontSize: 25.h,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bodyText,
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: color == 'blue' ? Colors.white : Colors.blue),
                    )
                  ]),
            )));
  }
}
