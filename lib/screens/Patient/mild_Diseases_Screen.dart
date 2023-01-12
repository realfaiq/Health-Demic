import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Patient Widgets/Mild_Disease_Box.dart';
import '../../widgets/Common Widgets/Drawer.dart';

class MildDiseaseScreen extends StatelessWidget {
  const MildDiseaseScreen({super.key});
  static const routeName = '/mild-disease';

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
                                'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                          )),
                    ))
          ],
        )),
        body: ListView(children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Please Select a Disease',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            child: MildDiseaseBox(
                'Fever',
                'Panadol',
                'Above 15 Tablets',
                'Below 15 Syrup',
                '3 tablets for Adults Morning Evening and Night.',
                '3 tea Spoons for children Morning Evening and Night.',
                'Doctor.Ali Akbar'),
          ),
          Container(
            child: MildDiseaseBox(
                'Cough',
                'Levixon',
                'Above 15 Tablets',
                'Below 15 Syrup',
                '3 tablets for Adults Morning Evening and Night.',
                '3 tea Spoons for children Morning Evening and Night.',
                'Doctor. Asghar Khan'),
          ),
          Container(
            child: MildDiseaseBox(
                'Flu',
                'Tea Time',
                'Above 15 Tablets',
                'Below 15 Syrup',
                '3 tablets for Adults Morning Evening and Night.',
                '3 tea Spoons for children Morning Evening and Night.',
                'Doctor.Ali Akbar'),
          ),
          Container(
            child: MildDiseaseBox(
                'Headache',
                'Desprine',
                'Above 15 Tablets',
                'Below 15 Syrup',
                '1 tablets for Adults at the time of Headache.',
                'Not for children.',
                'Doctor.Ali Akbar'),
          ),
          Container(
            child: MildDiseaseBox(
                'Skin Burns',
                'Quench',
                'Above 15 Tube',
                'Below 15 Tube',
                'For Adults Apply on the burn part.',
                'Do the same for children.',
                'Doctor.Ali Akbar'),
          ),
          Container(
            child: MildDiseaseBox(
                'Cuts',
                'Anti cuts',
                'Above 15 Tablets',
                'Below 15 Syrup',
                '3 tablets for Adults Morning Evening and Night.',
                '3 tea Spoons for children Morning Evening and Night.',
                'Doctor.Ali Akbar'),
          ),
        ]));
  }
}
