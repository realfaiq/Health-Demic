import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/Patient/medicine_Recommendation_Screen.dart';

class MildDiseaseBox extends StatelessWidget {
  final String diseaseName;
  final String medicationName;
  final String above15AgeGroup;
  final String below15AgeGroup;
  final String adultsDosage;
  final String childrenDosage;
  final String recommendedBy;

  MildDiseaseBox(
      this.diseaseName,
      this.medicationName,
      this.above15AgeGroup,
      this.below15AgeGroup,
      this.adultsDosage,
      this.childrenDosage,
      this.recommendedBy);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(MedicineRecommendationScreen.routeName, arguments: {
          'diseaseName': diseaseName,
          'medicationName': medicationName,
          'above15AgeGroup': above15AgeGroup,
          'below15AgeGroup': below15AgeGroup,
          'adultsDosage': adultsDosage,
          'childrenDosage': childrenDosage,
          'recommendedBy': recommendedBy,
        });
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
