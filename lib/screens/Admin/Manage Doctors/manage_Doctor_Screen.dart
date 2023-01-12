import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './view_Doctor_Screen.dart';
import './add_Doctor_Screen.dart';
import '../../../widgets/Admin Widgets/Doctor_Profile_Box.dart';
import '../../../widgets/Common Widgets/Drawer.dart';

class ManageDoctorScreen extends StatelessWidget {
  const ManageDoctorScreen({super.key});
  static const routeName = '/manage-doctor-screen';

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
      body: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'Manage Doctors',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewDoctorScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                    'name': 'Sansa Stark',
                    'age': '23 years',
                    'specialization': 'Heart',
                    'email': 'sansastark@gmail.com',
                    'password': 'sansa123',
                  });
            },
            child: DoctorProfileBox(
              'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              'Sansa Stark',
              '23',
              'Heart',
              'sansastark@gmail.com',
              'saren123',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ViewDoctorScreen.routeName,
                  arguments: {
                    'imageURL':
                        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                    'name': 'Chloe Decker',
                    'age': '25 years',
                    'specialization': 'Lungs',
                    'email': 'chloedecker@gmail.com',
                    'password': 'chloe123',
                  });
            },
            child: DoctorProfileBox(
                'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
                'Chloe Decker',
                '22',
                'Lungs',
                'chloedecker@gmail.com',
                'chloe123'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddDoctorScreen.routeName);
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
