import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Mobile_Box.dart';
import '../../widgets/Tab_Box.dart';
import '../../widgets/Drawer.dart';
import '../Patient/mild_Diseases_Screen.dart';
import '../Patient/specific_Diseases_Screen.dart';
import '../Patient/manage_Medical_Profiles.dart';
import '../Patient/manage_Appointments_Screen.dart';
import '../Patient/find_a_Medicine_Screen.dart';

class PatientHomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: (AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Welcome Emily Rose!',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.waving_hand,
            color: Colors.orange.shade100,
          ),
        ]),
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
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return GridView.count(
              primary: false,
              padding: EdgeInsets.all(20.sp),
              crossAxisSpacing: 20.h,
              mainAxisSpacing: 20.w,
              crossAxisCount: 2,
              childAspectRatio: 2 / 2,
              children: [
                MobileBox('blue', 'Book an Appointment', 'Appoint best Doctors',
                    Icons.person, SpecificDiseasesScreen.routeName),
                MobileBox(
                    'white',
                    'Get Medicine Recommendation',
                    'Suggestion about Medicine',
                    Icons.medication,
                    MildDiseaseScreen.routeName),
                MobileBox(
                    'white',
                    'Manage Medical Profiles',
                    'Manage your Profiles',
                    Icons.manage_accounts,
                    ManageMedicalProfilesScreen.routeName),
                MobileBox(
                    'blue',
                    'Manage Appointments',
                    'Manage Your Appointments',
                    Icons.manage_accounts,
                    ManageAppointmentsScreen.routeName),
                MobileBox(
                    'blue',
                    'Find a Medicine',
                    'Track your medicines in pharmacies',
                    Icons.search,
                    FindAMedicineScreen.routeName),
              ],
            );
          } else {
            return GridView.count(
              primary: false,
              padding: EdgeInsets.all(20.sp),
              crossAxisSpacing: 20.h,
              mainAxisSpacing: 20.w,
              crossAxisCount: 3,
              childAspectRatio: 2 / 2,
              children: [
                TabBox('blue', 'Book an Appointment', 'Appoint best Doctors',
                    Icons.person, SpecificDiseasesScreen.routeName),
                TabBox(
                    'white',
                    'Get Medicine Recommendation',
                    'Suggestion about Medicine',
                    Icons.medication,
                    MildDiseaseScreen.routeName),
                TabBox(
                    'white',
                    'Manage Medical Profiles',
                    'Manage your Profiles',
                    Icons.manage_accounts,
                    ManageMedicalProfilesScreen.routeName),
                TabBox(
                    'blue',
                    'Manage Appointments',
                    'Manage Your Appointments',
                    Icons.manage_accounts,
                    ManageAppointmentsScreen.routeName),
                TabBox(
                    'blue',
                    'Find a Medicine',
                    'Track your medicines in pharmacies',
                    Icons.search,
                    FindAMedicineScreen.routeName),
              ],
            );
          }
        }),
      ),
    );
  }
}
