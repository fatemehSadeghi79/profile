import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            bodyText2: TextStyle(fontSize: 15),
            bodyText1: TextStyle(fontSize: 13 ,color: Color.fromARGB(200, 255, 255, 255)),
            headline6: TextStyle(fontWeight: FontWeight.bold),
            subtitle1: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
          )
        )
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum Vitae'),
        actions: [
          SizedBox(
            width: 8,
          ),
          Icon(CupertinoIcons.chat_bubble),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                  'images/man.png',
                  width: 60,
                  height: 60,
                )),

                SizedBox(width: 8,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Brice 56rophin',style: Theme.of(context).textTheme.subtitle1,),
                    SizedBox(width: 8,),
                    Text('product & print Designer'),
                    SizedBox(width: 8,),
                    Row(children: [
                      Icon(CupertinoIcons.location_circle ,color: Theme.of(context).textTheme.bodyText1!.color,size: 18,),
                      SizedBox(width: 4,),
                      Text('Pork France',style: Theme.of(context).textTheme.bodyText1,)

                    ],)

                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
            child: Text('jkkghjffffseaewwrtfyghujikmnjhbyuiop;,mnbvfctyuiop[];lkjhgvcser\ntyuiopxdcfgvhbjnkl;'
                'dxfcghjbkmdxfcghjbxdtfcgvhbjndxfgchvjbkrzxtycuvbn)khhgfdddr\nrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrssssssssssssssssssssssssssstttttttttttttttttttttrrrrrrrrrrrrrrrrrxxxxxxxxxxxxxxxxxxsddddddddddddddddddddd'
                ,style: Theme.of(context).textTheme.bodyText1,),
          )
        ],
      ),
    );
  }
}
