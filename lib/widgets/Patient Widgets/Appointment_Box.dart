import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentBox extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String appointmentDate;

  AppointmentBox(this.doctorImage, this.doctorName, this.appointmentDate);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0.0, 1),
                blurRadius: 1.0,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              child: Row(children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(doctorImage),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        doctorName.length > 17
                            ? '${doctorName.substring(0, 17)}...'
                            : doctorName,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18.sp,
                            color: Theme.of(context).accentColor,
                            fontWeight: FontWeight.bold),
                        softWrap: false,
                      ),
                      Text(
                        appointmentDate,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13.sp,
                            color: Theme.of(context).accentColor),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        //Code Here...
                      },
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Icon(
                      Icons.delete,
                      color: Colors.white,
                    )
                  ]),
            )
          ]),
        ));
    ;
  }
}
