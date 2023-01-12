import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/Admin/Manage Disease/edit_Disease_Screen.dart';

class DiseaseBox extends StatelessWidget {
  final String disease;
  final String severity;

  DiseaseBox(this.disease, this.severity);

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
                  disease,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18.sp,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Disease Type: ${severity}',
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
                    Navigator.pushNamed(context, EditDiseaseScreen.routeName,
                        arguments: {
                          'name': disease,
                          'severity': severity,
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
