import 'package:flutter/material.dart';
import 'package:health_app/features/home/presentation/view/widgets/upcoming_card_body_view.dart';

import 'health_needs.dart';
import 'nearby_doctors.dart';

class homeViewBody extends StatelessWidget {
  const homeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(14),
      children:  [
        const UpcomingCardView(),
        const SizedBox(height: 20,),
        Text("Health Needs",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)
        ),
        const SizedBox(height: 15,),
        const HealthNeeds(),
        const SizedBox(height: 20,),
        Text('Nearby Doctors',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 20,),
        const NearbyDoctors()

      ],
    );
  }
}
