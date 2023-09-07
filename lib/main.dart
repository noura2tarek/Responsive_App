import 'package:flutter/material.dart';
import 'package:responsive_app/desktop.dart';
import 'package:responsive_app/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //////////////////// branch test
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(
        builder: (BuildContext context) {
          if(MediaQuery.of(context).size.width <= 565)
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  //textScaleFactor: 0.8,
                ),
                child: MobileScreen()
            );

         return MediaQuery(
             data: MediaQuery.of(context).copyWith(
               textScaleFactor: 1.25,
             ),
             child: DesktopScreen());

      },


      ),
    );
  }
}
//using Layout builder or Media Query
//To make a widget responsive make it expanded so it will take the remaining space according to the screen size
// LayoutBuilder(
// builder: (context, constraints) {
// //565
// if(constraints.minWidth.toInt() <= 565){
// return MobileScreen();
// }
// print(constraints.minWidth.toInt());
// return DesktopScreen();
// },
//
// ),



