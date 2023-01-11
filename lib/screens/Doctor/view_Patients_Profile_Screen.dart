import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewPatientsProfileScreen extends StatelessWidget {
  const ViewPatientsProfileScreen({super.key});
  static const routeName = '/view-patient-profile';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        appBar: (AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
                padding: EdgeInsets.all(10.sp),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                ))
          ],
        )),
        body: SafeArea(
          child: ListView(children: [
            CircleAvatar(
              radius: 100.0.sp,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                args['imageURL'],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              args['name'],
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            Text(
              args['age'],
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80.h,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 30.0.sp, vertical: 30.sp),
              height: 650.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.r),
                    topRight: Radius.circular(25.r)),
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Medical Condition',
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                    Text(
                      args['MedicalCondition'],
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Medications',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['Medications'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Doctor',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['Doctor'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Medical Notes',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['MedicalNotes'],
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Theme.of(context).accentColor,
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Last Visit',
                      // 'Doctor Khan',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['LastVisit'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Next Visit',
                      // 'Doctor Khan',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Text(
                      args['NextVisit'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                  ]),
            )
          ]),
        ));
  }
}
