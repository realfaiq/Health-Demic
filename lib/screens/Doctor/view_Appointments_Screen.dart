import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Doctor Widgets/Appointment_Box.dart';
import '../../widgets/Common Widgets/Drawer.dart';

class ViewAppointmentsScreen extends StatelessWidget {
  const ViewAppointmentsScreen({super.key});
  static const routeName = '/view-appointments';

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
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(20.sp),
        children: [
          Text(
            'View Your Appointments',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox(
              'Abdur Rehman', 'Rehman Medical Institute', '5 PM', 'Monday'),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox(
              'Sania Anjum', 'Khyber Teaching Hospital', '6 PM', 'Monday'),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox(
              'Ashley Gardener', 'Rehman Medical Institute', '2 PM', 'Tuesday'),
          SizedBox(
            height: 20.h,
          ),
          AppointmentBox('Smriti Mandhana', 'Khyber Teaching Hospital', '3 PM',
              'Wednesday'),
        ],
      )),
    );
  }
}
