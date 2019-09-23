import 'package:burc_rehberi/burc_listesi.dart';
import 'package:burc_rehberi/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class burc_detay extends StatefulWidget {
  int index;

  burc_detay(this.index);

  @override
  _burc_detayState createState() => _burc_detayState();
}

class _burc_detayState extends State<burc_detay> {

 @override
 void initState()//bu fonksiyon class ilk çalıştığında birkere çalışılacak fonksiyon
 {
   super.initState();
   baskinRenkAyarla();
 }
  burc secilenBurc;
PaletteGenerator brenk;  Color baskinrenk;
void baskinRenkAyarla()
{
   secilenBurc = burc_listesi.blist[widget.index];
    Future<PaletteGenerator> fpalet= PaletteGenerator.fromImageProvider(AssetImage("images/"+secilenBurc.burcBuyukResim));
    fpalet.then((value){
      brenk=value;
      setState(() {
       baskinrenk=brenk.dominantColor.color; 
      });
    });
}
  @override
  Widget build(BuildContext context) {
  
   
    
  
    return Scaffold(
        primary: true,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250,
              pinned: false,
              backgroundColor: baskinrenk!=null?baskinrenk:Colors.pink,
              //primary: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(secilenBurc.burcAdi + " burcu ve özellikleri"),
                background: Image.asset("images/" + secilenBurc.burcBuyukResim,
                    fit: BoxFit.cover),
              ),
              //backgroundColor: Colors.pink,
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.pink.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: SingleChildScrollView(
                  child: Text(secilenBurc.burcDetay,
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
            ),
          ],
        ));
  }
}
