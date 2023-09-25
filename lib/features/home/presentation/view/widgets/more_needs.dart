import 'package:flutter/material.dart';

import 'health_needs.dart';

class MoreNeeds extends StatelessWidget {
  const MoreNeeds({super.key, required this.category});
  final List<CustomIcon> category;

  @override
  Widget build(BuildContext context) {

    List<CustomIcon> healthNeeds=[
      CustomIcon(icon: 'assets/appointment.png', name: 'Appointment'),
      CustomIcon(icon: 'assets/hospital.png', name: 'Hospital'),
      CustomIcon(icon: 'assets/virus.png', name: 'Covid-19'),
      CustomIcon(icon: 'assets/drug.png', name: 'Pharmacy'),
    ];

    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:List.generate(category.length, (index){
          return Column(
            children: [
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(80),
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4)
                  ),
                  child: Image.asset(category[index].icon),
                ),
              ),
              const SizedBox(height: 6,),
              Text(category[index].name,
                style: const TextStyle(
                    fontWeight: FontWeight.w600
                ),
              )
            ],
          );
        })
    );
  }
}


