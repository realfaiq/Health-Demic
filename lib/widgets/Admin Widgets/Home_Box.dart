import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBox extends StatelessWidget {
  final String manageType;

  HomeBox(this.manageType);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(15.r))),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Theme.of(context).accentColor,
              child: Icon(
                Icons.manage_accounts,
                color: Theme.of(context).primaryColor,
                size: 40.sp,
              ),
            ),
            SizedBox(
              width: 20.h,
            ),
            Expanded(
              child: Text(
                manageType,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontFamily: 'Roboto',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
    );
  }
}
