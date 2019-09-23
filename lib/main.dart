import 'package:burc_rehberi/burc_detay.dart';
import 'package:burc_rehberi/burc_listesi.dart';
import 'package:flutter/material.dart';

main() =>runApp(MyApp());


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
     // initialRoute: "/burc_listesi",
      routes: {
        '/':(context)=>burc_listesi(),
        '/burc_listesi':(context)=>burc_listesi(),
        '/burcDetay':(context)=>burc_detay(-1),
      },
      onGenerateRoute: (settigs){
        List<String> route=settigs.name.split("/");
        debugPrint(route[1]);
        if (route[1]=="burcDetay")
        {
          debugPrint("içerde");
        return MaterialPageRoute(builder: (context)=>burc_detay(int.parse(route[2])));
        }
        //return MaterialPageRoute(builder: (context)=>burc_detay(-1));
      },
      
      title: "Burç Rehberi",
      theme: ThemeData(primarySwatch: Colors.pink),

     // home:burc_listesi() ,

    );
  }
  
}