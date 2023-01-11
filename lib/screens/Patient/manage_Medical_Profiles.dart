import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Patient Widgets/Medical_Profile_Box.dart';
import '../Patient/view_Medical_Profile_Screen.dart';
import '../Patient/add_Medical_Profile_Screen.dart';

class ManageMedicalProfilesScreen extends StatelessWidget {
  const ManageMedicalProfilesScreen({super.key});
  static const routeName = '/manage-medical-profiles';

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
            'Manage Your Medical Profiles',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewMedicalProfileScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                    'name': 'Chloe Decker',
                    'age': '25 years',
                    'MedicalCondition': 'Heart Disease',
                    'Medications': 'Salliver, Rova',
                    'Doctor': 'Doctor. Adnan Gull',
                    'MedicalNotes':
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                    'ImportantContacts': '0316-9985144',
                  });
            },
            child: MedicalProfileBox(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                'Chloe Decker',
                '22',
                'Heart',
                'Salliver, Augmentin',
                'Dr. Khalil Ur Rehman',
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                '0316-9985144'),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewMedicalProfileScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                    'name': 'Chloe Decker',
                    'age': '25 years',
                    'MedicalCondition': 'Fever',
                    'Medications': 'Panadol',
                    'Doctor': 'Doctor. Khalid',
                    'MedicalNotes': 'Hello! there this is my medical Note!',
                    'ImportantContacts': '03346139039',
                  });
            },
            child: MedicalProfileBox(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                'Chloe Decker',
                '22',
                'Fever',
                'Panadol',
                'Dr. Ali Khan',
                'Hello! there this my medical Note!',
                '03346139039'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddMedicalProfileScreen.routeName);
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
