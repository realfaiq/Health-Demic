import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/Common Widgets/Drawer.dart';

class AddMedicineScreen extends StatelessWidget {
  const AddMedicineScreen({super.key});
  static const routeName = '/add-medicine-screen';

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
            'Add a Medicine',
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
                    labelText: 'Medicine Name',
                    prefixIcon: Icon(Icons.dangerous)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'For Disease',
                    prefixIcon: Icon(Icons.medical_services)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Age Group above 15',
                    prefixIcon: Icon(Icons.arrow_upward)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Age Group Below 15',
                    prefixIcon: Icon(Icons.arrow_downward)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Dosage For Adults',
                    prefixIcon: Icon(Icons.arrow_upward)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Dosage For Children',
                    prefixIcon: Icon(Icons.arrow_downward)),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Recommended By',
                    prefixIcon: Icon(Icons.person)),
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
