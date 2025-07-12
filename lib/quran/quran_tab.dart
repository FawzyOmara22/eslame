import 'package:flutter/material.dart';
import 'package:eslame/app_theme.dart';
import 'package:eslame/quran/quran_service.dart';
import 'package:eslame/quran/sura.dart';
import 'package:eslame/quran/sura_details_screen.dart';
import 'package:eslame/quran/sura_item.dart';

class QuranTab extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {


    double scremmnWidth =MediaQuery .sizeOf(context).width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Text('Suras list ',style:Theme.of(context).textTheme.titleMedium),
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (_, index) {
            Sura sura = QuranService.suras[index];
             return InkWell(
            onTap:(){
              Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,arguments: sura);
            },
            
            child: SuraItem(sura));
          },
         
          itemCount: QuranService.suras.length, // Number of Suras in the Quran
          separatorBuilder:(_, index) => Divider(
            color:AppTheme.width ,
            thickness: 1,
            indent:scremmnWidth*0.1 ,
            endIndent:scremmnWidth*0.1 ) ,
           
            
        
        )),
      ],);
    }
}