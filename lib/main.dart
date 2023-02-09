import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_demic/screens/Patient/doctor_Recommender_Screen.dart';
import 'package:health_demic/screens/Patient/find_a_Medicine_Screen.dart';
import 'globals.dart';
import 'widgets/Doctor Widgets/Practice_Form.dart';
import 'screens/Common/log_In_Screen.dart';
import 'screens/Common/sign_up_Screen.dart';
import 'screens/Common/forget_Password_Screen.dart';
import 'screens/Common/edit_Profile_Screen.dart';
import 'screens/Patient/patient_Home_Screen.dart';
import 'screens/Patient/mild_Diseases_Screen.dart';
import 'screens/Patient/specific_Diseases_Screen.dart';
import 'screens/Patient/doctor_Details_Screen.dart';
import 'screens/Patient/doctor_Confirmation_Screen.dart';
import 'screens/Patient/manage_Medical_Profiles.dart';
import 'screens/Patient/edit_Medical_Profile_Screen.dart';
import 'screens/Patient/manage_Appointments_Screen.dart';
import 'screens/Patient/medicine_Recommendation_Screen.dart';
import 'screens/Patient/view_Medical_Profile_Screen.dart';
import 'screens/Patient/add_Medical_Profile_Screen.dart';
import 'screens/Doctor/doctor_Home_Screen.dart';
import 'screens/Doctor/manage_Patients_Profile_Screen.dart';
import 'screens/Doctor/view_Appointments_Screen.dart';
import 'screens/Doctor/perform_Practice_Screen.dart';
import 'screens/Doctor/practice_Confirmation_Screen.dart';
import 'screens/Doctor/view_Patients_Profile_Screen.dart';
import 'screens/Doctor/add_Patients_Profile_Screen.dart';
import 'screens/Doctor/edit_Patient_Profile_Screen.dart';
import 'screens/Admin/admin_Home_Screen.dart';
import 'screens/Admin/Manage Admins/manage_Admins_Screen.dart';
import 'screens/Admin/Manage Admins/add_Admins_Screen.dart';
import 'screens/Admin/Manage Admins/edit_Admins_Screen.dart';
import 'screens/Admin/Manage Admins/view_Admins_Screen.dart';
import 'screens/Admin/Manage Doctors/manage_Doctor_Screen.dart';
import 'screens/Admin/Manage Doctors/view_Doctor_Screen.dart';
import 'screens/Admin/Manage Doctors/add_Doctor_Screen.dart';
import 'screens/Admin/Manage Doctors/edit_Doctor_Screen.dart';
import 'screens/Admin/Manage Patients/manage_Patient_Screen.dart';
import 'screens/Admin/Manage Patients/view_Patient_Screen.dart';
import 'screens/Admin/Manage Patients/add_Patient_Screen.dart';
import 'screens/Admin/Manage Patients/edit_Patient_Screen.dart';
import 'screens/Admin/Manage Disease/manage_Diseases_Screen.dart';
import 'screens/Admin/Manage Disease/add_Disease_Screen.dart';
import 'screens/Admin/Manage Disease/edit_Disease_Screen.dart';
import 'screens/Admin/Manage Medicine/manage_Medicines_Screen.dart';
import 'screens/Admin/Manage Medicine/add_Medicine_Screen.dart';
import 'screens/Admin/Manage Medicine/edit_Medicine_Screen.dart';
import 'screens/Admin/Manage Medicine/view_Medicine_Screen.dart';

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
            scaffoldMessengerKey: snackbarKey,
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
              ForgetPasswordScreen.routeName: (context) =>
                  const ForgetPasswordScreen(),
              PatientHomeScreen.routeName: (context) => PatientHomeScreen(),
              EditProfileScreen.routeName: (context) => EditProfileScreen(),
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
              EditMedicalProfileScreen.routeName: (context) =>
                  EditMedicalProfileScreen(),
              ManageAppointmentsScreen.routeName: (context) =>
                  ManageAppointmentsScreen(),
              FindAMedicineScreen.routeName: (context) => FindAMedicineScreen(),
              MedicineRecommendationScreen.routeName: (context) =>
                  MedicineRecommendationScreen(),
              ViewMedicalProfileScreen.routeName: (context) =>
                  ViewMedicalProfileScreen(),
              DoctorHomeScreen.routeName: (context) => DoctorHomeScreen(),
              ManagePatientsProfileScreen.routeName: (context) =>
                  ManagePatientsProfileScreen(),
              ViewAppointmentsScreen.routeName: (context) =>
                  ViewAppointmentsScreen(),
              PerformPracticeScreen.routeName: (context) =>
                  PerformPracticeScreen(),
              PracticeForm.routeName: (context) => PracticeForm(),
              PracticeConfirmationScreen.routeName: (context) =>
                  PracticeConfirmationScreen(),
              AdminHomeScreen.routeName: (context) => AdminHomeScreen(),
              AddMedicalProfileScreen.routeName: (context) =>
                  AddMedicalProfileScreen(),
              ViewPatientsProfileScreen.routeName: (context) =>
                  ViewPatientsProfileScreen(),
              AddPatientProfileScreen.routeName: (context) =>
                  AddPatientProfileScreen(),
              EditPatientProfileScreen.routeName: (context) =>
                  EditPatientProfileScreen(),
              ManageAdminScreen.routeName: (context) => ManageAdminScreen(),
              AddAdminScreen.routeName: (context) => AddAdminScreen(),
              EditAdminScreen.routeName: (context) => EditAdminScreen(),
              ViewAdminScreen.routeName: (context) => ViewAdminScreen(),
              ManageDoctorScreen.routeName: (context) => ManageDoctorScreen(),
              ViewDoctorScreen.routeName: (context) => ViewDoctorScreen(),
              AddDoctorScreen.routeName: (context) => AddDoctorScreen(),
              EditDoctorScreen.routeName: (context) => EditDoctorScreen(),
              ManagePatientScreen.routeName: (context) => ManagePatientScreen(),
              ViewPatientScreen.routeName: (context) => ViewPatientScreen(),
              AddPatientScreen.routeName: (context) => AddPatientScreen(),
              EditPatientScreen.routeName: (context) => EditPatientScreen(),
              ManageDiseasesScreen.routeName: (context) =>
                  ManageDiseasesScreen(),
              AddDiseaseScreen.routeName: (context) => AddDiseaseScreen(),
              EditDiseaseScreen.routeName: (context) => EditDiseaseScreen(),
              ManageMedicineScreen.routeName: (context) =>
                  ManageMedicineScreen(),
              AddMedicineScreen.routeName: (context) => AddMedicineScreen(),
              EditMedicineScreen.routeName: (context) => EditMedicineScreen(),
              ViewMedicineScreen.routeName: (context) => ViewMedicineScreen(),
            },
          );
        });
  }
}
