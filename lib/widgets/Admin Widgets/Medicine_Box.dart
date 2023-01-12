import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/Admin/Manage Medicine/edit_Medicine_Screen.dart';

class MedicineBox extends StatelessWidget {
  final String medicine;
  final String forDisease;
  final String forAgeGroupAbove15;
  final String forAgeGroupBelow15;
  final String forAdultsDosage;
  final String forChildrenDosage;
  final String recommendedBy;

  MedicineBox(
      this.medicine,
      this.forDisease,
      this.forAgeGroupAbove15,
      this.forAgeGroupBelow15,
      this.forAdultsDosage,
      this.forChildrenDosage,
      this.recommendedBy);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.sp,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.sp)),
          color: Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medicine,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18.sp,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'For Disease: ${forDisease}',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.sp,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, EditMedicineScreen.routeName,
                        arguments: {
                          'name': medicine,
                          'forDisease': forDisease,
                          'forAgeGroupAbove15': forAgeGroupAbove15,
                          'forAgeGroupBelow15': forAgeGroupBelow15,
                          'forAdultsDosage': forAdultsDosage,
                          'forChildrenDosage': forChildrenDosage,
                          'recommendedBy': recommendedBy,
                        });
                  },
                  child: Icon(
                    Icons.edit,
                    color: Theme.of(context).accentColor,
                    size: 30.sp,
                  ),
                ),
                SizedBox(
                  width: 10.sp,
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.delete,
                    color: Theme.of(context).accentColor,
                    size: 30.sp,
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
