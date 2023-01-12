import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Patient Widgets/Mobile_Doctor_Recommender_Box.dart';
import '../../widgets/Patient Widgets/Tab_Doctor_Recommender_Screen.dart';
import 'doctor_details_Screen.dart';
import '../../widgets/Common Widgets/Drawer.dart';

class DoctorRecommenderScreen extends StatelessWidget {
  const DoctorRecommenderScreen({super.key});
  static const routeName = '/doctor-recommender';

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
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'Please Select a Doctor',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  if (constraints.maxWidth < 500) {
                    return GridView.count(
                      primary: false,
                      padding: EdgeInsets.all(20.sp),
                      crossAxisSpacing: 20.h,
                      mainAxisSpacing: 20.w,
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.5,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1482849297070-f4fae2173efe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  'doctorName': 'Dr. Danerys Targeryn',
                                  'hospitalName': 'Rehman Medical Institue',
                                  'education': 'MBBS/MSC Cardiologist RMI',
                                  'patients': '600+',
                                  'experience': '7yrs +',
                                  'Fee': 'Rs. 1200-/'
                                });
                          },
                          child: MobileDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1482849297070-f4fae2173efe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              'Dr. Danerys Targeryn',
                              'Rehman Medical Institue'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                  'doctorName': 'Dr. Cersei Lannister',
                                  'hospitalName': 'Khyber Teaching Hospital',
                                  'education':
                                      'Mphil. Arteries Arteries Specialist',
                                  'patients': '500+',
                                  'experience': '6 yrs +',
                                  'Fee': 'Rs. 900-/'
                                });
                          },
                          child: MobileDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                              'Dr. Cersei Lannister',
                              'Khyber Teaching Hospital'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1520333789090-1afc82db536a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                                  'doctorName': 'Dr. Chloe Decker',
                                  'hospitalName': 'Rehman Medical Institute',
                                  'education': 'MBBS Mphil. Arteries of Heart',
                                  'patients': '400+',
                                  'experience': '5 yrs +',
                                  'Fee': 'Rs. 1000-/'
                                });
                          },
                          child: MobileDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1520333789090-1afc82db536a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                              'Dr. Cloe Decker',
                              'Rehman Medical Institue'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  'doctorName': 'Dr. Catelyn Stark',
                                  'hospitalName': 'Lady Reading Hospital',
                                  'education': 'MBBS Doctor of Heart',
                                  'patients': '300+',
                                  'experience': '4 yrs +',
                                  'Fee': 'Rs. 1500-/'
                                });
                          },
                          child: MobileDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              'Dr. Catelyn Stark',
                              'Lady Reading Hospital'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  'doctorName': 'Dr. Robb Stark',
                                  'hospitalName': 'Rehman Medical Institute',
                                  'education': 'MBBS Doctor of Heart',
                                  'patients': '200+',
                                  'experience': '3 yrs +',
                                  'Fee': 'Rs. 1000-/'
                                });
                          },
                          child: MobileDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              'Dr. Robb Stark',
                              'Rehman Medical Institute'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1606318313647-137d1f3b4d3c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1177&q=80',
                                  'doctorName': 'Dr. Arya Stark',
                                  'hospitalName': 'Khyber Teaching Hospital',
                                  'education': 'MBBS Doctor of Heart',
                                  'patients': '100+',
                                  'experience': '2 yrs +',
                                  'Fee': 'Rs. 800-/'
                                });
                          },
                          child: MobileDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1606318313647-137d1f3b4d3c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1177&q=80',
                              'Dr. Arya Stark',
                              'Khyber Teaching Hospital'),
                        )
                      ],
                    );
                  } else {
                    return GridView.count(
                      primary: false,
                      padding: EdgeInsets.all(20.sp),
                      crossAxisSpacing: 20.h,
                      mainAxisSpacing: 20.w,
                      crossAxisCount: 3,
                      childAspectRatio: 2 / 2,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1482849297070-f4fae2173efe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  'doctorName': 'Dr. Danerys Targeryn',
                                  'hospitalName': 'Rehman Medical Institue',
                                  'education': 'MBBS/MSC Cardiologist RMI',
                                  'patients': '600+',
                                  'experience': '7yrs +',
                                  'Fee': 'Rs. 1200-/'
                                });
                          },
                          child: TabDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1482849297070-f4fae2173efe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              'Dr. Danerys Targeryn',
                              'Rehman Medical Institue'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                                  'doctorName': 'Dr. Cersei Lannister',
                                  'hospitalName': 'Khyber Teaching Hospital',
                                  'education':
                                      'Mphil. Arteries Arteries Specialist',
                                  'patients': '500+',
                                  'experience': '6 yrs +',
                                  'Fee': 'Rs. 900-/'
                                });
                          },
                          child: TabDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                              'Dr. Cersei Lannister',
                              'Khyber Teaching Hospital'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1520333789090-1afc82db536a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                                  'doctorName': 'Dr. Chloe Decker',
                                  'hospitalName': 'Rehman Medical Institute',
                                  'education': 'MBBS Mphil. Arteries of Heart',
                                  'patients': '400+',
                                  'experience': '5 yrs +',
                                  'Fee': 'Rs. 1000-/'
                                });
                          },
                          child: TabDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1520333789090-1afc82db536a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                              'Dr. Cloe Decker',
                              'Rehman Medical Institue'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  'doctorName': 'Dr. Catelyn Stark',
                                  'hospitalName': 'Lady Reading Hospital',
                                  'education': 'MBBS Doctor of Heart',
                                  'patients': '300+',
                                  'experience': '4 yrs +',
                                  'Fee': 'Rs. 1500-/'
                                });
                          },
                          child: TabDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              'Dr. Catelyn Stark',
                              'Lady Reading Hospital'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  'doctorName': 'Dr. Robb Stark',
                                  'hospitalName': 'Rehman Medical Institute',
                                  'education': 'MBBS Doctor of Heart',
                                  'patients': '200+',
                                  'experience': '3 yrs +',
                                  'Fee': 'Rs. 1000-/'
                                });
                          },
                          child: TabDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              'Dr. Robb Stark',
                              'Rehman Medical Institute'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, DoctorDetailsScreen.routeName,
                                arguments: {
                                  'imageURL':
                                      'https://images.unsplash.com/photo-1606318313647-137d1f3b4d3c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1177&q=80',
                                  'doctorName': 'Dr. Arya Stark',
                                  'hospitalName': 'Khyber Teaching Hospital',
                                  'education': 'MBBS Doctor of Heart',
                                  'patients': '100+',
                                  'experience': '2 yrs +',
                                  'Fee': 'Rs. 800-/'
                                });
                          },
                          child: TabDoctorRecommenderBox(
                              'https://images.unsplash.com/photo-1606318313647-137d1f3b4d3c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1177&q=80',
                              'Dr. Arya Stark',
                              'Khyber Teaching Hospital'),
                        )
                      ],
                    );
                  }
                }),
              ),
            ],
          ),
        ));
  }
}
