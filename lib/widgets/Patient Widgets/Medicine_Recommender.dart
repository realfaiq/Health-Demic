import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MedicineRecommenderBox extends StatelessWidget {
  final String medicationName;
  final String diseaseName;
  final String below15AgeGroup;
  final String above15AgeGroup;
  final String adultsDosage;
  final String childrenDosage;
  final String recommendedBy;
  final int iconContainerheight;
  final int iconheight;
  final int medicineBoxheight;

  MedicineRecommenderBox(
      this.medicationName,
      this.diseaseName,
      this.below15AgeGroup,
      this.above15AgeGroup,
      this.adultsDosage,
      this.childrenDosage,
      this.recommendedBy,
      this.iconContainerheight,
      this.iconheight,
      this.medicineBoxheight);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Container(
          color: Colors.blue,
          height: iconContainerheight.sp,
          width: double.infinity,
          child: Icon(
            Icons.medical_information,
            size: iconheight.sp,
            color: Colors.white,
          ),
        )),
        Expanded(
          child: ListView(children: [
            Container(
              height: medicineBoxheight.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 120.sp, vertical: 10.sp),
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.sp, vertical: 10.sp),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              medicationName,
                              // 'Panadol',
                              style: TextStyle(
                                  fontSize: 25.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text(
                              'Conditions',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 25.sp),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              diseaseName,
                              // 'Fever',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text(
                              'Age Group',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 25.sp),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              above15AgeGroup,
                              // '1 tea spoon',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.sp),
                            ),
                            Text(
                              below15AgeGroup,
                              // '2 tea spoon',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text(
                              'Dosage',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 25.sp),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              adultsDosage,
                              // '4 tea spoon',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.sp),
                            ),
                            Text(
                              childrenDosage,
                              // '2 tea spoon',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 20.sp,
                            ),
                            Text(
                              'Recommended By',
                              // 'Doctor Khan',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 25.sp),
                            ),
                            SizedBox(
                              height: 5.sp,
                            ),
                            Text(
                              recommendedBy,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  fontSize: 18.sp),
                            )
                          ]),
                    )
                  ]),
            ),
          ]),
        )
      ],
    );
  }
}
