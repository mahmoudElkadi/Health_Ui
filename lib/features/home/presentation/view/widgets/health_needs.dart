import 'package:flutter/material.dart';

import 'more_needs.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcon=[
      CustomIcon(icon: 'assets/appointment.png', name: 'Appointment'),
      CustomIcon(icon: 'assets/hospital.png', name: 'Hospital'),
      CustomIcon(icon: 'assets/virus.png', name: 'Covid-19'),
      CustomIcon(icon: 'assets/more.png', name: 'More'),
    ];

    List<CustomIcon> healthNeeds=[
      CustomIcon(icon: 'assets/appointment.png', name: 'Appointment'),
      CustomIcon(icon: 'assets/hospital.png', name: 'Hospital'),
      CustomIcon(icon: 'assets/virus.png', name: 'Covid-19'),
      CustomIcon(icon: 'assets/drug.png', name: 'Pharmacy'),
    ];

    List<CustomIcon> specialisedCared = [
      CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
      CustomIcon(name: "Health Care", icon: 'assets/health_care.png'),
      CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
      CustomIcon(name: "Insured", icon: 'assets/insurance.png'),
    ];


    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:List.generate(customIcon.length, (index){
        return Column(
          children: [
            InkWell(
              onTap: (){
                if(customIcon[index].name=='More'){
                  showModalBottomSheet(context: context,
                      backgroundColor: Colors.white,
                      showDragHandle: true,
                      builder: (context){
                        return Container(
                          height: 350,
                          width: double.infinity,
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  const Text('Health Needs',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900
                                    ),
                                  ),
                                const SizedBox(height: 10,),
                                MoreNeeds(category: healthNeeds ,),
                                SizedBox(height: 30,),
                                const Text('Specialised Care',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                SizedBox(height: 18,),
                                MoreNeeds(category: specialisedCared ,),


                              ],
                            ),
                          ),

                        );
                      }
                  );
                }
              },
              borderRadius: BorderRadius.circular(80),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(10),
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4)
                ),
                child: Image.asset(customIcon[index].icon),
              ),
            ),
            const SizedBox(height: 6,),
             Text(customIcon[index].name,
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


class CustomIcon {
   final String icon;
   final String name;

  CustomIcon({
    required this.icon,
    required this.name
});
}