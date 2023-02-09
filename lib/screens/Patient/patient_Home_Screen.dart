import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Common Widgets/Mobile_Box.dart';
import '../../widgets/Common Widgets/Tab_Box.dart';
import '../../widgets/Common Widgets/Drawer.dart';
import '../Patient/mild_Diseases_Screen.dart';
import '../Patient/specific_Diseases_Screen.dart';
import '../Patient/manage_Medical_Profiles.dart';
import '../Patient/manage_Appointments_Screen.dart';
import '../Patient/find_a_Medicine_Screen.dart';

class PatientHomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(
          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
          'Emily Rose',
          'emily@gmail.com',
          'emily123',
          'patient'),
      appBar: (AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Home',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Builder(
              builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                    )),
              ),
            )
          ]))),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20.sp),
              // child: Container(
              //   height: 100.sp,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.all(Radius.circular(15.r)),
              //       color: Theme.of(context).primaryColor),
              //   child: Center(
              //       child: Text(
              //     'Welcome Emily Rose',
              //     style: TextStyle(
              //         fontFamily: 'Roboto',
              //         color: Theme.of(context).accentColor,
              //         fontWeight: FontWeight.bold,
              //         fontSize: 20.sp),
              //   )),
              // )
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 500) {
                    return ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25.r)),
                      child: Image.network(
                        'https://img.freepik.com/free-vector/health-professional-team_52683-36024.jpg?w=996&t=st=1675972881~exp=1675973481~hmac=b99ee2f94200f5c41657abc5a5c584946d24655466a72318f982c18b23f7b045',
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'For You',
                style: TextStyle(
                    fontFamily: 'Robotot',
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: Colors.blue),
              ),
            ),
          ),
          Expanded(
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
                    MobileBox(
                        'blue',
                        'Book an Appointment',
                        'Appoint best Doctors',
                        Icons.person,
                        SpecificDiseasesScreen.routeName),
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
                    // MobileBox(
                    //     'blue',
                    //     'Find a Medicine',
                    //     'Track your medicines in pharmacies',
                    //     Icons.search,
                    //     FindAMedicineScreen.routeName),
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
                    TabBox(
                        'blue',
                        'Book an Appointment',
                        'Appoint best Doctors',
                        Icons.person,
                        SpecificDiseasesScreen.routeName),
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
                    // TabBox(
                    //     'blue',
                    //     'Find a Medicine',
                    //     'Track your medicines in pharmacies',
                    //     Icons.search,
                    //     FindAMedicineScreen.routeName),
                  ],
                );
              }
            }),
          )
        ],
      )),
    );
  }
}
