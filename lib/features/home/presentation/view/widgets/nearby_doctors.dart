import 'package:flutter/material.dart';
import 'package:health_app/features/home/presentation/model/doctor_model.dart';
import 'package:ionicons/ionicons.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(nearbyDoctor.length, (index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo,
                  image:  DecorationImage(image: AssetImage(nearbyDoctor[index].profile),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("Dr. ${nearbyDoctor[index].name}",
                    style:const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ) ,
                  ),
                  const SizedBox(height: 8,),
                   Text(nearbyDoctor[index].position),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(Ionicons.star,
                          color: Colors.yellow,
                          size: 25,
                        ),
                      ),
                       Text((nearbyDoctor[index].averageReview).toString(),
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:6.0),
                        child: Text('(${(nearbyDoctor[index].totalReview).toString()} Reviews)',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      )
                    ],
                  )

                ],
              )

            ],
          ),
        );
      })
    );
  }
}
