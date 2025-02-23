import 'package:flutter/material.dart';
import 'package:islami_app/suras_content.dart';

class QuranPage extends StatelessWidget {
  const QuranPage({super.key});
  static const List<String> SurasNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>GestureDetector(
                onTap: () =>{
                  Navigator.of(context).pushNamed(SurasContent.RouteName,arguments: Sura(SuraName: SurasNames[index], index: index)),
                  } ,
                 child:  Text(SurasNames[index],style: Theme.of(context).textTheme.headlineMedium,
                 textAlign: TextAlign.center,)
              )
              ,
            itemCount:SurasNames.length ,
            separatorBuilder: (context, index) => SizedBox(height: 12,),),

          )
        ],
      ),
    );
  }
}
class Sura{
  String SuraName;
  int index;
  Sura({required this.SuraName,required this.index});
}