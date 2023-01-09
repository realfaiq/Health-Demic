import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineBox extends StatelessWidget {
  final String imageUrl;
  final String medicineName;
  final String availability;

  MedicineBox(this.imageUrl, this.medicineName, this.availability);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            color: Theme.of(context).accentColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0.0, 1),
                blurRadius: 1.0,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(imageUrl),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    medicineName,
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 18.sp),
                  ),
                  Text(
                    availability,
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 13.sp),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
