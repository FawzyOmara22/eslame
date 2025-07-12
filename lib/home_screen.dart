import 'package:flutter/material.dart';
import 'package:eslame/nav_bar_selected_icon.dart';
import 'package:eslame/nav_bar_unselected_icon.dart';
import 'package:eslame/tabs/hadth_tab.dart';
import 'package:eslame/quran/quran_tab.dart';  
import 'package:eslame/tabs/radio_tab.dart';
import 'package:eslame/tabs/sebha_tab.dart';
import 'package:eslame/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
 static const String routeName ='/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int currentIndex = 0;

 List<Widget> tabs = [
    QuranTab(),
    HadthTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  List<String> backgroundImages = [
    'quran_background',
    'hadeth_background',
    'sebha_background',
    'radio_background',
    'time_background',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/${backgroundImages[currentIndex]}.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
             
            children: [
              
              Image.asset(
                'assets/images/header.png',
                height: MediaQuery.sizeOf(context).height*0.15,
                fit: BoxFit.fitWidth,),
               Expanded(child: tabs[currentIndex]),
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:currentIndex,
        onTap: (index) {
          if(currentIndex == index) return;
          currentIndex = index;
          print(currentIndex);
         setState(() {
           
         });
        },
        items: 
      
      [BottomNavigationBarItem(
        icon: NavBarUnselectedIcon(imageName: 'quran'),
        activeIcon: NavBarSelectedIcon(imageName: 'quran'),
        label: 'Quran'
        ),
        BottomNavigationBarItem(
        icon: NavBarUnselectedIcon(imageName: 'hadeth'),
        activeIcon: NavBarSelectedIcon(imageName: 'hadeth'),
        label: 'Hadeth'
        ),
        BottomNavigationBarItem(
        icon: NavBarUnselectedIcon(imageName: 'sebha'),
        activeIcon: NavBarSelectedIcon(imageName: 'sebha'),
        label: 'Sebha'
        ),
        BottomNavigationBarItem(
        icon: NavBarUnselectedIcon(imageName: 'radio'),
        activeIcon: NavBarSelectedIcon(imageName: 'radio'),
        label: 'Radio'
        ),
        BottomNavigationBarItem(
        icon: NavBarUnselectedIcon(imageName: 'time'),
        activeIcon: NavBarSelectedIcon(imageName: 'time'),
        label: 'Time'
        ),]),
        
        
    );
     
     
       
    
  }
}
