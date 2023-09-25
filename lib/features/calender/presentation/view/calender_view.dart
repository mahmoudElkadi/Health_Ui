import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/features/calender/presentation/view/widgets/appiontment_card.dart';

class CalenderView extends StatefulWidget {
  const CalenderView({super.key});

  @override
  State<CalenderView> createState() => _CalenderViewState();
}

int activeIndex=0;

class _CalenderViewState extends State<CalenderView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CupertinoSlidingSegmentedControl(
            padding: const EdgeInsets.all(5),
            groupValue: activeIndex,
              children: const {
                0:Text('Upcoming'),
                1:Text('Complete'),
                2:Text('Result'),

              },
              onValueChanged: (value){
              setState(() {
                activeIndex=value!;
              });
              }),
          const SizedBox(height: 30,),
          const AppointmentCard(),
        ],
      ),
    );
  }
}
