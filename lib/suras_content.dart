import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_themes.dart';
import 'package:islami_app/loading_indcator.dart';
import 'package:islami_app/quran_page.dart';

class SurasContent extends StatefulWidget {
  static const RouteName="/Sura";

  @override
  State<SurasContent> createState() => _SurasContentState();
}

class _SurasContentState extends State<SurasContent> {
List<String>ayat=[];
  late Sura args;

  @override
  Widget build(BuildContext context)  {
    args = ModalRoute.of(context)!.settings.arguments as Sura;
     if(ayat.isEmpty){
       loadSuraFile();
     }

    return Container( decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.SuraName),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.07,
             horizontal: 24),
          decoration: BoxDecoration(
            color: AppTheme.White,
            borderRadius: BorderRadius.circular(25),
          ),
          child:ayat.isEmpty?
          LoadingIndcator():
          ListView.builder(
              itemBuilder: (_, index) =>
            Text(ayat[index],
            style:Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
            ),
          itemCount: ayat.length,

        ),
      ),
      ),
    );
  }

  Future<void> loadSuraFile() async{

    String sura=
    await rootBundle.loadString('assets/files/${args.index+1}.txt');
    ayat=sura.split('\r\n');
    setState(() {});
  }
}
