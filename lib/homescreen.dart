import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double screenHight = 0;
  double screenWidth = 0;
  Color primary = Colors.green;

  // List<IconData> navigationIcons = [
  //   FontAwesomeIcons.calendarAlt,
  //   FontAwesomeIcons.check,
  //   FontAwesomeIcons.useAlt,
  // ];

  @override
  Widget build(BuildContext context) {
    screenHight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
    
      backgroundColor: Colors.lightGreen,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightGreen,
        color: Colors.lightGreen.shade200,
        animationDuration: const Duration(microseconds: 300),
        onTap: (index) {
         print(index);
        },
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
           Icon(
            Icons.calendar_today,
            color: Colors.white,
          ),
           Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
      // body: Center(
      //   child: Text("Home"),
      // ),
      // bottomNavigationBar: Container(
      //   height: 70,
      //   margin: const EdgeInsets.only(
      //     left: 12,
      //     right: 12,
      //     bottom: 24,
      //   ),
      //   decoration: const BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.all(Radius.circular(40)),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black26,
      //         blurRadius: 10,
      //         offset: Offset(2, 2),
      //       ),
      //     ],
      //   ),
      //   child: const ClipRRect(
      //     borderRadius:  BorderRadius.all(Radius.circular(40)),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //      //   for(int i=; i<navigationIcons.length; i++)...<Expanded>
      //         Expanded(
      //           child: Center(
      //             child: Icon(
      //               FontAwesomeIcons.calendar,
      //               color:  Colors.white,
      //               ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
