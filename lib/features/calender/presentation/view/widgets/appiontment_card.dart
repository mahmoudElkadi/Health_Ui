import 'package:flutter/material.dart';
import 'package:health_app/features/home/presentation/model/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../home/presentation/view/widgets/health_needs.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});



  @override
  Widget build(BuildContext context) {



    return Column(
      children: List.generate(nearbyDoctor.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 19.0),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.25,
            padding: const EdgeInsets.symmetric(vertical: 22,horizontal: 20),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(nearbyDoctor[index].profile,
                    width:MediaQuery.of(context).size.width*0.14,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(width:14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("Dr. ${nearbyDoctor[index].name}",
                        style:const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ) ,
                      ),
                    ),
                    Text(nearbyDoctor[index].position,
                        style: Theme.of(context).textTheme.bodyLarge
                    ),
                    const SizedBox(height: 18,),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 8),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Row(
                        children: [
                          Icon(Ionicons.calendar_outline,
                              size:18 ,
                              color: Colors.black87
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0,right: 14),
                            child: Text("Today",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(Ionicons.time_outline,
                              size:18 ,
                            ),
                          ),
                          Text('14:30 - 15:30 AM',
                            style: TextStyle(
                            ),
                          )
                        ],
                      ),

                    ),
                    Row(

                      children: [
                        OutlinedButton(onPressed: (){}, child: Text('Cancel')),
                        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                        FilledButton(onPressed: (){}, child: Text('Reschedule'),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
