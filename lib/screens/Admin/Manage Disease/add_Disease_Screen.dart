import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/Common Widgets/Drawer.dart';

class AddDiseaseScreen extends StatelessWidget {
  const AddDiseaseScreen({super.key});
  static const routeName = '/add-disease-screen';

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
            'Add Disease',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Form(
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Disease', prefixIcon: Icon(Icons.dangerous)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Severity', prefixIcon: Icon(Icons.severe_cold)),
              ),
              SizedBox(
                height: 30.sp,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Save'),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(
                            vertical: 15.sp, horizontal: 30.sp)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).accentColor),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.sp)))),
              )
            ]),
          ),
        ],
      )),
    );
  }
}
