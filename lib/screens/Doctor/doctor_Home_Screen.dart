import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Doctor/view_Appointments_Screen.dart';
import '../../widgets/Common Widgets/Mobile_Box.dart';
import '../../widgets/Common Widgets/Tab_Box.dart';
import '../Doctor/manage_Patients_Profile_Screen.dart';
import '../Doctor/perform_Practice_Screen.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});
  static const routeName = '/doctor-home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Container(
            height: 400.h,
            width: double.infinity,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.r),
                  bottomRight: Radius.circular(25.r)),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Theme.of(context).accentColor,
                      size: 35.0.sp,
                    ),
                    Padding(
                        padding: EdgeInsets.all(5.sp),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                        )),
                  ],
                )),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Dr. Robert Stark',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 500) {
              return GridView.count(
                primary: false,
                padding: EdgeInsets.all(20.sp),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 20.h,
                mainAxisSpacing: 20.w,
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
                children: [
                  MobileBox(
                      'blue',
                      'Manage Patients Profile',
                      'Manage Your Patient Profiles',
                      Icons.manage_accounts,
                      ManagePatientsProfileScreen.routeName),
                  MobileBox(
                      'white',
                      'View Your Appointments',
                      'View who has booked you and when',
                      Icons.remove_red_eye,
                      ViewAppointmentsScreen.routeName),
                  MobileBox(
                      'white',
                      'Perform Your Practice',
                      'Perform your practice management',
                      Icons.note_add,
                      PerformPracticeScreen.routeName),
                ],
              );
            } else {
              return GridView.count(
                primary: false,
                padding: EdgeInsets.all(20.sp),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 20.h,
                mainAxisSpacing: 20.w,
                crossAxisCount: 3,
                childAspectRatio: 2 / 2,
                children: [
                  TabBox(
                      'blue',
                      'Manage Patients Profile',
                      'Manage Your Patient Profiles',
                      Icons.manage_accounts,
                      ManagePatientsProfileScreen.routeName),
                  TabBox(
                      'white',
                      'View Your Appointments',
                      'View who has booked you and when',
                      Icons.remove_red_eye,
                      ViewAppointmentsScreen.routeName),
                  TabBox(
                      'white',
                      'Perform Your Practice',
                      'Perform your practice management',
                      Icons.note_add,
                      PerformPracticeScreen.routeName),
                ],
              );
            }
          }),
        ],
      ),
    ));
  }
}
