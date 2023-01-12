import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/Admin Widgets/Disease_Box.dart';
import './Add_Disease_Screen.dart';

class ManageDiseasesScreen extends StatelessWidget {
  const ManageDiseasesScreen({super.key});
  static const routeName = '/manage-diseases-screen';

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
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'Manage Diseases',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.sp,
          ),
          DiseaseBox('Heart Disease', 'Specific'),
          SizedBox(
            height: 20.sp,
          ),
          DiseaseBox('Lung Disease', 'Specific'),
          SizedBox(
            height: 20.sp,
          ),
          DiseaseBox('Fever', 'Mild'),
          SizedBox(
            height: 20.sp,
          ),
          DiseaseBox('Cough', 'Mild'),
          SizedBox(
            height: 20.sp,
          ),
          DiseaseBox('Flu', 'Mild'),
          SizedBox(
            height: 20.sp,
          ),
          DiseaseBox('Allergies', 'Mild'),
          SizedBox(
            height: 20.sp,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddDiseaseScreen.routeName);
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
