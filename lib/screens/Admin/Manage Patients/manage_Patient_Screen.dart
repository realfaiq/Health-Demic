import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './view_Patient_Screen.dart';
import './add_Patient_Screen.dart';
import '../../../widgets/Admin Widgets/Patient_Profile_Box.dart';

class ManagePatientScreen extends StatelessWidget {
  const ManagePatientScreen({super.key});
  static const routeName = '/manage-patient-screen';

  @override
  Widget build(BuildContext context) {
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
              )),
        ],
      )),
      body: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'Manage Patients',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewPatientScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    'name': 'Sansa Stark',
                    'age': '23 years',
                    'email': 'sansastark@gmail.com',
                    'password': 'sansa123',
                  });
            },
            child: PatientProfileBox(
              'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              'Sansa Stark',
              '23',
              'sansastark@gmail.com',
              'saren123',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewPatientScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                    'name': 'Chloe Decker',
                    'age': '25 years',
                    'email': 'chloedecker@gmail.com',
                    'password': 'chloe123',
                  });
            },
            child: PatientProfileBox(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                'Chloe Decker',
                '22',
                'chloedecker@gmail.com',
                'chloe123'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddPatientScreen.routeName);
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
