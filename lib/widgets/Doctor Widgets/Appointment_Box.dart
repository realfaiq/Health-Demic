import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentBox extends StatelessWidget {
  final String patientName;
  final String location;
  final String time;
  final String day;

  AppointmentBox(this.patientName, this.location, this.time, this.day);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
          color: Theme.of(context).primaryColor),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Patient Name: ${patientName}',
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 18.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Location: ${location}',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    color: Theme.of(context).accentColor),
              ),
              Text(
                'Time: ${time}',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    color: Theme.of(context).accentColor),
              ),
              Text(
                'Day: ${day}',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 13.sp,
                    color: Theme.of(context).accentColor),
              ),
            ]),
      ),
    );
  }
}
