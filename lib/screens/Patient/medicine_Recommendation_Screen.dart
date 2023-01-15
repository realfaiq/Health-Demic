import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/Common Widgets/Drawer.dart';
import '../../widgets/Patient Widgets/Medicine_Recommender.dart';

class MedicineRecommendationScreen extends StatelessWidget {
  const MedicineRecommendationScreen({super.key});
  static const routeName = '/medicine-recommendation-screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
        backgroundColor: Colors.blue,
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
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
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
        body: SafeArea(child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return MedicineRecommenderBox(
                args['medicationName'],
                args['diseaseName'],
                args['below15AgeGroup'],
                args['above15AgeGroup'],
                args['adultsDosage'],
                args['childrenDosage'],
                args['recommendedBy'],
                350,
                350,
                550);
          } else {
            return MedicineRecommenderBox(
                args['medicationName'],
                args['diseaseName'],
                args['below15AgeGroup'],
                args['above15AgeGroup'],
                args['adultsDosage'],
                args['childrenDosage'],
                args['recommendedBy'],
                200,
                200,
                550);
          }
        })));
  }
}
