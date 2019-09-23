import 'package:burc_rehberi/models/burc.dart';
import 'package:burc_rehberi/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:quiver/strings.dart';
class burc_listesi extends StatelessWidget {
    static List<burc> blist;
    @override
    Widget build(BuildContext context) {
      blist=veriKaynaginiDoldur();
            return Scaffold(
              appBar: AppBar(
                title: Text("Burç Listesi"),
              ),
              body:listeyiOlustur(),
                          );
                        }
                    
                      List<burc> veriKaynaginiDoldur() {
              
                        List<String> burcAdlari= Strings.BURC_ADLARI;
                        List<String> tarihler=Strings.BURC_TARIHLERI;
                        List<String> genelOz=Strings.BURC_GENEL_OZELLIKLERI;
              
                        List<burc> burclar= [];
                        int sayac=0;
                        burcAdlari.forEach((elemnt){
              
                          String kresim;
                          String bresim;
                          
                          kresim=elemnt.toLowerCase()+(sayac+1).toString()+".png";
                          bresim=elemnt.toLowerCase()+"_buyuk"+(sayac+1).toString()+".png";
              
                          burc b=new burc(burcAdlari[sayac],tarihler[sayac], genelOz[sayac], kresim, bresim);
                          burclar.add(b);
                          sayac++;
              
                        });
                       return burclar;
              
                        
                        
                      }
              
               Widget listeyiOlustur() {


                 return ListView.builder(
                   itemCount: blist.length,
                   itemBuilder: (BuildContext contex,i){
                     return tekListeElemaniOlustur(contex,i);
                                                             },
                                                           );
                                          
                                                          }
                     
                Widget tekListeElemaniOlustur(BuildContext contex, int i) {
                  return Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap:()=>Navigator.pushNamed(contex, '/burcDetay/$i'),
                        leading: Image.asset("images/"+blist[i].burcKucukResim,
                        height: 64,
                        width: 64,),
                        title: Text(blist[i].burcAdi,
                        style: TextStyle(fontSize:24,fontWeight: FontWeight.w500,color: Colors.pink.shade500 ),),
                        subtitle: Text(blist[i].burcTarihi,
                        style:TextStyle(fontSize:24,fontWeight: FontWeight.w700,color: Colors.black26 )),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.pink),
                      ),
                    ),
                    
                      
                  );
                }
                     
                       
  
    
}