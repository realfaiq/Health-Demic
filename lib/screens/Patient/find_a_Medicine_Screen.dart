import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Patient Widgets/Medicine_Box.dart';
import '../../widgets/Common Widgets/Drawer.dart';

class FindAMedicineScreen extends StatelessWidget {
  const FindAMedicineScreen({super.key});
  static const routeName = '/find-a-medicine';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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
        body: ListView(
          padding: EdgeInsets.all(20.sp),
          children: [
            Text(
              'Find/Track a Medicine',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.sp,
            ),
            TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.r)),
                      borderSide: BorderSide(width: 1.sp)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.r)),
                      borderSide: BorderSide(width: 1.sp)),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for medicine',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.sp)),
            ),
            SizedBox(height: 20.h),
            MedicineBox(
                'https://images.unsplash.com/photo-1607619056574-7b8d3ee536b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGhlYWx0aGNhcmV8ZW58MHx8MHx8&w=1000&q=80',
                'Panadol',
                'In Stock at Umar Pharmacy'),
            SizedBox(height: 20.h),
            MedicineBox(
                'https://images.unsplash.com/photo-1622227922682-56c92e523e58?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWVkaWNpbmVzfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                'Augmentin',
                'In Stock at Umar Pharmacy'),
            SizedBox(height: 20.h),
            MedicineBox(
                'https://plus.unsplash.com/premium_photo-1668898899067-8ffbb886b2f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVkaWNhdGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80',
                'Paracetomol',
                'In Stock at Umar Pharmacy'),
            SizedBox(height: 20.h),
            MedicineBox(
                'https://images.unsplash.com/photo-1512069772995-ec65ed45afd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1lZGljaW5lfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                'Levoxin',
                'In Stock at Umar Pharmacy'),
          ],
        ),
      ),
    );
  }
}
