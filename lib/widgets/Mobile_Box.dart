import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileBox extends StatelessWidget {
  final String color;
  final String headText;
  final String bodyText;
  final IconData icon;
  final String routeName;

  MobileBox(
      this.color, this.headText, this.bodyText, this.icon, this.routeName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(routeName);
        },
        child: Container(
            decoration: BoxDecoration(
                color: color == 'blue'
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).accentColor,
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
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color == 'blue'
                            ? Theme.of(context).accentColor
                            : Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        icon,
                        size: 35.sp,
                        color: color == 'blue'
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                      ),
                      alignment: Alignment.center,
                    ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    Text(
                      headText,
                      style: TextStyle(
                          color: color == 'blue'
                              ? Theme.of(context).accentColor
                              : Theme.of(context).primaryColor,
                          fontSize: 18.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bodyText,
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: color == 'blue'
                              ? Theme.of(context).accentColor
                              : Theme.of(context).primaryColor),
                    )
                  ]),
            )));
  }
}
