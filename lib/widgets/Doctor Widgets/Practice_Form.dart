import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../screens/Doctor/practice_Confirmation_Screen.dart';
import '../Common Widgets/Drawer.dart';

class PracticeForm extends StatefulWidget {
  static const routeName = '/practice-form';

  _PracticeFormState createState() => _PracticeFormState();
}

class _PracticeFormState extends State<PracticeForm> {
  final _inputController1 = TextEditingController();
  final _inputController2 = TextEditingController();
  final _inputController3 = TextEditingController();
  final _inputController4 = TextEditingController();
  final _inputController5 = TextEditingController();

  void dispose() {
    _inputController1.dispose();
    _inputController2.dispose();
    _inputController3.dispose();
    _inputController4.dispose();
    _inputController5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
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
        padding: EdgeInsets.symmetric(horizontal: 35.sp, vertical: 10.sp),
        children: [
          Text(
            'Please Fill the form below',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Practice Type: ${args['practiceName']}',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text('Performed By: Dr. Robert Stark',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center),
          SizedBox(
            height: 20.h,
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                controller: _inputController1,
                decoration: InputDecoration(
                  labelText: 'Patient Full Name',
                ),
              ),
              TextFormField(
                controller: _inputController2,
                decoration: InputDecoration(
                  labelText: 'Age',
                ),
              ),
              TextFormField(
                controller: _inputController3,
                decoration: InputDecoration(
                  labelText: 'Medical Condition',
                ),
              ),
              TextFormField(
                controller: _inputController4,
                decoration: InputDecoration(
                    labelText: args['practiceName'] == 'Prescribe Medicine'
                        ? 'Medicine'
                        : args['practiceName'] == 'Recommend Lab Test'
                            ? 'Lab Test Name'
                            : 'Surgery Name'),
              ),
              TextFormField(
                controller: _inputController5,
                decoration: InputDecoration(
                    labelText: args['practiceName'] == 'Prescribe Medicine'
                        ? 'Dosage'
                        : 'Date'),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(vertical: 15.sp)),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).accentColor),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)))),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, PracticeConfirmationScreen.routeName,
                        arguments: {
                          'patientName': _inputController1.text,
                          'age': _inputController2.text,
                          'disease': _inputController3.text,
                          'perscription': _inputController4.text,
                          'date/dosage': _inputController5.text,
                        });
                  },
                  child: Text('Submit'),
                ),
              )
            ],
          ))
        ],
      )),
    );
  }
}
