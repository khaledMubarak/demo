import 'package:flutter/material.dart';
import 'package:islami_app/app_themes.dart';
import 'package:islami_app/hadeth.dart';


class HadethContent extends StatelessWidget {
 static const String RouteName="/Hadeth Content";

  @override
  Widget build(BuildContext context) {

    Hadeth hadeth=ModalRoute.of(context)!.settings.arguments as Hadeth;
    return  Container( decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadeth.Hadeth_Name),
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
         child:
          ListView.builder(
            itemBuilder: (_, index) =>
                Text( hadeth.Hadeth_Content[index],
                  style:Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
            itemCount: hadeth.Hadeth_Content.length,

          ),
        ),
      ),
    );

  }
}
