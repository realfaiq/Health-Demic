import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/Admin Widgets/Medicine_Box.dart';
import './add_Medicine_Screen.dart';
import './view_Medicine_Screen.dart';
import '../../../widgets/Common Widgets/Drawer.dart';

class ManageMedicineScreen extends StatelessWidget {
  const ManageMedicineScreen({super.key});
  static const routeName = '/manage-medicine-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(
          'https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80',
          'Faiq Ahmad',
          'ahmadfaiq46.com',
          'faiq123',
          'admin'),
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
                              'https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=721&q=80'),
                        )),
                  ))
        ],
      )),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'Manage Medicines',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.sp,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewMedicineScreen.routeName,
                  arguments: {
                    'name': 'Panadol',
                    'diseaseType': 'Fever',
                    'forAgeGroupAbove15': 'For Above 15 Tablets',
                    'forAgeGroupBelow15': 'For Below 15 Syrup',
                    'forAdultsDosage': '3 medicines per day',
                    'forChildrenDosage': '3 spoons per day',
                    'recommendedBy': 'Dr. Ali Akbar'
                  });
            },
            child: MedicineBox(
                'Panadol',
                'Fever',
                'For Above 15 Tablets',
                'For Below 15 Syrup',
                '3 medicines per day',
                '3 spoons per day',
                'Dr. Ali Akbar'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewMedicineScreen.routeName,
                  arguments: {
                    'name': 'Levoxin',
                    'diseaseType': 'Cough',
                    'forAgeGroupAbove15': 'For Above 15 Tablets',
                    'forAgeGroupBelow15': 'For Below 15 Syrup',
                    'forAdultsDosage': '3 medicines per day',
                    'forChildrenDosage': '3 spoons per day',
                    'recommendedBy': 'Dr. Ali Akbar'
                  });
            },
            child: MedicineBox(
                'Levoxin',
                'Cough',
                'For Above 15 Tablets',
                'For Below 15 Syrup',
                '3 medicines per day',
                '3 spoons per day',
                'Dr. Ali Akbar'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewMedicineScreen.routeName,
                  arguments: {
                    'name': 'Tea Time',
                    'diseaseType': 'Flu',
                    'forAgeGroupAbove15': 'For Above 15 Tablets',
                    'forAgeGroupBelow15': 'For Below 15 Syrup',
                    'forAdultsDosage': '3 medicines per day',
                    'forChildrenDosage': '3 spoons per day',
                    'recommendedBy': 'Dr. Ali Akbar'
                  });
            },
            child: MedicineBox(
                'Tea Time',
                'Flu',
                'For Above 15 Tablets',
                'For Below 15 Syrup',
                '3 medicines per day',
                '3 spoons per day',
                'Dr. Ali Akbar'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewMedicineScreen.routeName,
                  arguments: {
                    'name': 'Quench',
                    'diseaseType': 'Skin Burns',
                    'forAgeGroupAbove15': 'For Above 15 Tablets',
                    'forAgeGroupBelow15': 'For Below 15 Syrup',
                    'forAdultsDosage': '3 medicines per day',
                    'forChildrenDosage': '3 spoons per day',
                    'recommendedBy': 'Dr. Ali Akbar'
                  });
            },
            child: MedicineBox(
                'Quench',
                'Skin Burns',
                'For Above 15 Tablets',
                'For Below 15 Syrup',
                '3 medicines per day',
                '3 spoons per day',
                'Dr. Ali Akbar'),
          ),
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
            height: 20.sp,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddMedicineScreen.routeName);
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
