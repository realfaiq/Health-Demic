import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_demic/screens/Patient/doctor_Recommender_Screen.dart';
import 'package:health_demic/screens/Patient/find_a_Medicine_Screen.dart';
import 'screens/Common/log_In_Screen.dart';
import 'screens/Common/sign_up_Screen.dart';
import 'screens/Patient/home_Screen.dart';
import 'screens/Patient/mild_Diseases_Screen.dart';
import 'screens/Patient/specific_Diseases_Screen.dart';
import 'screens/Patient/doctor_Details_Screen.dart';
import 'screens/Patient/doctor_Confirmation_Screen.dart';
import 'screens/Patient/manage_Medical_Profiles.dart';
import 'screens/Patient/manage_Appointments_Screen.dart';
import 'screens/Patient/medicine_Recommendation_Screen.dart';
import 'screens/Patient/view_Medical_Profile_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 900),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Health Demic',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                accentColor: Colors.white,
                errorColor: Colors.red,
                textTheme: ThemeData.light().textTheme.copyWith(
                      titleLarge: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                      titleMedium: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18.sp,
                          color: Colors.black),
                      titleSmall: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18.sp,
                          color: Colors.blue),
                    )),
            // home: LogInScreen(),
            routes: {
              '/': (context) => LogInScreen(),
              SignUpScreen.routeName: (context) => SignUpScreen(),
              PatientHomeScreen.routeName: (context) => PatientHomeScreen(),
              MildDiseaseScreen.routeName: (context) => MildDiseaseScreen(),
              SpecificDiseasesScreen.routeName: (context) =>
                  SpecificDiseasesScreen(),
              DoctorRecommenderScreen.routeName: (context) =>
                  DoctorRecommenderScreen(),
              DoctorDetailsScreen.routeName: (context) => DoctorDetailsScreen(),
              DoctorConfirmationScreen.routeName: (context) =>
                  DoctorConfirmationScreen(),
              ManageMedicalProfilesScreen.routeName: (context) =>
                  ManageMedicalProfilesScreen(),
              ManageAppointmentsScreen.routeName: (context) =>
                  ManageAppointmentsScreen(),
              FindAMedicineScreen.routeName: (context) => FindAMedicineScreen(),
              MedicineRecommendationScreen.routeName: (context) =>
                  MedicineRecommendationScreen(),
              ViewMedicalProfileScreen.routeName: (context) =>
                  ViewMedicalProfileScreen(),
            },
          );
        });
  }
}
