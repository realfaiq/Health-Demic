import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './view_Patients_Profile_Screen.dart';
import './add_Patients_Profile_Screen.dart';
import '../../widgets/Doctor Widgets/Patient_Profile_Box.dart';
import '../../widgets/Common Widgets/Drawer.dart';

class ManagePatientsProfileScreen extends StatelessWidget {
  const ManagePatientsProfileScreen({super.key});
  static const routeName = '/manage-patients-profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(
          'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
          'Robert Stark',
          'robertstark@gmail.com',
          'robert123',
          'doctor'),
      appBar: (AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Icon(Icons.arrow_back)),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Builder(
              builder: (context) => InkWell(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                        )),
                  ))
        ],
      )),
      body: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'Manage Your Patient Profiles',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewPatientsProfileScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    'name': 'Sansa Stark',
                    'age': '23 years',
                    'MedicalCondition': 'Heart Disease',
                    'Medications': 'Salliver, Rova',
                    'Doctor': 'Doctor. Adnan Gull',
                    'MedicalNotes':
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    'LastVisit': '01/10/2022',
                    'NextVisit': '01/02/2022'
                  });
            },
            child: PatientProfileBox(
                'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                'Sansa Stark',
                '23',
                'Heart',
                'Salliver, Rova',
                'Dr. Adnan Gul',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                '01/10/2022',
                '01/02/2023'),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewPatientsProfileScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                    'name': 'Chloe Decker',
                    'age': '25 years',
                    'MedicalCondition': 'Fever',
                    'Medications': 'Panadol',
                    'Doctor': 'Doctor. Khalid',
                    'MedicalNotes': 'Hello! there this is my medical Note!',
                    'LastVisit': '02/12/2022',
                    'NextVisit': '03/03/2023'
                  });
            },
            child: PatientProfileBox(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                'Chloe Decker',
                '22',
                'Fever',
                'Panadol',
                'Dr. Ali Khan',
                'Hello! there this my medical Note!',
                '02/12/2022',
                '03/03/2023'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddPatientProfileScreen.routeName);
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).accentColor,
          size: 40.0.sp,
        ),
      ),
    );
  }
}
