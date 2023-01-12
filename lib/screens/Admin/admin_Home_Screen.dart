import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Common Widgets/Drawer.dart';
import '../../widgets/Admin Widgets/Home_Box.dart';
import '../Admin/Manage Doctors/manage_Doctor_Screen.dart';
import '../Admin/Manage Patients/manage_Patient_Screen.dart';
import '../Admin/Manage Disease/manage_Diseases_Screen.dart';
import '../Admin/Manage Medicine/manage_Medicines_Screen.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});
  static const routeName = '/admin-home-screen';

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
            'Welcome Faiq Ahmad!',
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
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 30.sp),
        children: [
          Text(
            'Admin Panel',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ManageDiseasesScreen.routeName);
            },
            child: HomeBox('Manage Admins'),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ManageDoctorScreen.routeName);
            },
            child: HomeBox('Manage Doctors'),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ManagePatientScreen.routeName);
            },
            child: HomeBox('Manage Patients'),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ManageDiseasesScreen.routeName);
            },
            child: HomeBox('Manage Diseases'),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ManageMedicineScreen.routeName);
            },
            child: HomeBox('Manage Medicines'),
          ),
        ],
      ),
    );
  }
}
