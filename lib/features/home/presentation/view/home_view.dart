import 'package:flutter/material.dart';
import 'package:health_app/features/calender/presentation/view/calender_view.dart';
import 'package:health_app/features/home/presentation/view/widgets/health_needs.dart';
import 'package:health_app/features/home/presentation/view/widgets/home_body_view.dart';
import 'package:health_app/features/home/presentation/view/widgets/nearby_doctors.dart';
import 'package:health_app/features/home/presentation/view/widgets/upcoming_card_body_view.dart';
import 'package:ionicons/ionicons.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

List Screen=[
  homeViewBody(),
  CalenderView()
];

int i=0;

void changeIndex(int index) {
  i = index;


}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi Mahmoud"),
            Text('How are you feeling today?',
            style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){},icon: const Icon(Ionicons.search_outline)),
          IconButton(onPressed: (){},icon: const Icon(Ionicons.notifications_outline))
        ],
      ),
      body: Screen[i],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: i,
        onTap: (index){
          setState(() {
            changeIndex(index);

          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon:Icon(Ionicons.home_outline),label: "Home"),
          BottomNavigationBarItem(icon:Icon(Ionicons.calendar_outline),label: "Calendar"),
          BottomNavigationBarItem(icon:Icon(Ionicons.chatbubble_ellipses_outline),label: "Chats"),
          BottomNavigationBarItem(icon:Icon(Ionicons.person_outline),label: "Profile"),
        ],
      ) ,
    );
  }
}
