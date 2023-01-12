import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewDoctorScreen extends StatelessWidget {
  const ViewDoctorScreen({super.key});
  static const routeName = '/view-doctor-screen';

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
              radius: 180.0.sp,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                args['imageURL'],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 80.h,
            ),
            Container(
              padding:
                  EdgeInsets.symmetric(horizontal: 30.0.sp, vertical: 30.sp),
              height: 500.h,
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
                      'Name',
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).accentColor),
                    ),
                    Text(
                      args['name'],
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Age',
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
                      args['age'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Specialization',
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
                      args['specialization'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Email',
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
                      args['email'],
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Theme.of(context).accentColor,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Text(
                      'Password',
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
                      args['password'],
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
                  ]),
            )
          ]),
        ));
    ;
  }
}
