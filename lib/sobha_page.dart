import 'package:flutter/material.dart';
import 'package:islami_app/app_themes.dart';

class SobhaPage extends StatefulWidget {
  @override
  State<SobhaPage> createState() => _SobhaPageState();
}

class _SobhaPageState extends State<SobhaPage> {
  double angle = 0;
  int Number = 0;
  int check = 0;
  List<String> athkar = ["سبحان الله", "الحمدلله", "الله أكبر"];

  void ChangeCounter() {
    angle += 0.15;
    Number += 1;
    check += 1;
    if (check > 99) {
      check = 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(""),
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      ChangeCounter();
                    },
                    child: Container(

                        margin: EdgeInsets.only(
                            left: MediaQuery.sizeOf(context).height * 0.13,
                            ),
                        child:
                        Image.asset("assets/images/head_sebha_logo.png")),
                  ),
                  GestureDetector(
                      onTap: () {
                        ChangeCounter();
                      },
                      child: Transform.rotate(
                        angle: angle,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height * 0.065),
                              height:  MediaQuery.sizeOf(context).height * 0.3,
                              child: Image.asset(
                                "assets/images/body_sebha_logo.png",
                              )),
                      )),
                ],
              ),

                  Container(
                    child: Text(
                      "عدد التسبيحات",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
              SizedBox(height: 12,),
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppTheme.LightPrimary,
                  ),

                  child: Text(
                    Number.toString(),
                    style: Theme.of(context).textTheme.headlineLarge ,
                  )),
              SizedBox(height: 20,),
              Visibility(
                  visible: check >= 0 && check < 34,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.sizeOf(context).height * 0.015,
                         horizontal: MediaQuery.sizeOf(context).height * 0.07),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppTheme.LightPrimary,
                    ),
                    child: Text(
                      athkar[0],
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Visibility(
                  visible: check >= 34 && check < 67,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.sizeOf(context).height * 0.016,
                         horizontal: MediaQuery.sizeOf(context).height * 0.08),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppTheme.LightPrimary,
                    ),
                    child: Text(
                      athkar[1],
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Visibility(
                  visible: check >= 67 && check < 100,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.sizeOf(context).height * 0.016,
                        horizontal: MediaQuery.sizeOf(context).height * 0.08),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppTheme.LightPrimary,
                    ),
                    child: Text(
                      athkar[2],
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
