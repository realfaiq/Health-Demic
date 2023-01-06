import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/Patient/doctor_recommender_Screen.dart';

class DiseaseBox extends StatelessWidget {
  final String diseaseName;
  // final String routeName;

  DiseaseBox(this.diseaseName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(DoctorRecommenderScreen.routeName);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
        height: 50.h,
        width: double.infinity,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            diseaseName,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
            color: Theme.of(context).primaryColor),
      ),
    );
  }
}
