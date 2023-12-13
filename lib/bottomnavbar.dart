import 'package:flutter/material.dart';
import 'package:serchapp_test/main.dart';
import 'package:serchapp_test/pages.dart';
import 'package:serchapp_test/model/servermodel.dart';

Color dark_color = Colors.blue;
Color light_color = Colors.green;

List<modelserver> listgetdata = [];
int selectedIndex = 0;

class BottomNavBarExample extends StatefulWidget {
  const BottomNavBarExample({super.key});

  @override
  State<BottomNavBarExample> createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdataapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: light_color,
        backgroundColor: dark_color,
        actions: [
          InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.save),
              ))
        ],
        title: Text(
          'My Serch',
          style: TextStyle(
            color: light_color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: light_color,
        elevation: 0,
        indicatorColor: dark_color,
        // indicatorShape: CircleBorder(),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        animationDuration: Duration(seconds: 1),
        onDestinationSelected: (value) {
          setState(() {});
        },

        destinations: [
          NavigationDestination(
            tooltip: null,
            // selectedIcon: Icon(Icons.facebook),
            icon: Icon(
              Icons.question_answer,
              color: dark_color,
            ),
            label: 'Serch',

            selectedIcon: Icon(
              Icons.question_answer,
              color: light_color,
            ),
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add,
              color: dark_color,
            ),
            label: 'Add Question',
            selectedIcon: Icon(
              Icons.add,
              color: light_color,
            ),
          ),
          // NavigationDestination(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          //   selectedIcon: Icon(
          //     Icons.person,
          //     color: light_color,
          //   ),
          // ),
          NavigationDestination(
            icon: Icon(
              Icons.score,
              color: dark_color,
            ),
            label: 'Score',
            selectedIcon: Icon(
              Icons.score,
              color: light_color,
            ),
          ),
        ],
      ),
    );
  }
}
