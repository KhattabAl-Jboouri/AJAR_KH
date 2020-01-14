import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  //Main Widget which you build the app with 
  Widget build(BuildContext context) {
    return MaterialApp(
   title : 'chat system'  , 
   debugShowCheckedModeBanner: false ,  
   theme: ThemeData(                     // we will use these 2 colors in the app in many places thats why we identified them here
     primaryColor: Colors.red ,        
     accentColor: Color(0xFFFEF9EB) ,   
   ),
   home: HomeScreen() , // this will navigate the app to the HomeScreen

    );
  }

}
