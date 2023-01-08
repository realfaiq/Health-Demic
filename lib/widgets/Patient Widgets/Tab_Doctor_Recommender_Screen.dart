import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabDoctorRecommenderBox extends StatelessWidget {
  final String imageURL;
  final String doctorName;
  final String hospitalName;

  TabDoctorRecommenderBox(this.imageURL, this.doctorName, this.hospitalName);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0.0, 1),
                blurRadius: 1.0,
              )
            ],
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(15.r))),
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                  child: Image.network(
                    imageURL,
                    height: 200.h,
                    width: 150.w,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  doctorName,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      fontSize: 18.sp),
                  textAlign: TextAlign.center,
                ),
                Text(
                  hospitalName,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 13.sp),
                )
              ]),
        ));
    ;
  }
}
