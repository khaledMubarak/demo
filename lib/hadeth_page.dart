import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth.dart';
import 'package:islami_app/hadeth_content.dart';
import 'package:islami_app/loading_indcator.dart';

class HadethPage extends StatefulWidget {
  @override
  State<HadethPage> createState() => _HadethPageState();
}

class _HadethPageState extends State<HadethPage> {
  List<Hadeth> Ahadeth = [];

  @override
  Widget build(BuildContext context) {

      LoadHadethFile();


    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_logo.png",
          height: MediaQuery.sizeOf(context).height * 0.25,
        ),
        Expanded(
          child: Ahadeth.isEmpty
              ? LoadingIndcator()
              : ListView.separated(
                  padding: EdgeInsets.only(top: 16),
                  itemBuilder: (context, index) => GestureDetector(
                      onTap: () => {
                            Navigator.of(context).pushNamed(
                                HadethContent.RouteName,
                                arguments: Ahadeth[index]),
                          },
                      child: Text(
                        Ahadeth[index].Hadeth_Name,
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      )),
                  itemCount: Ahadeth.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 12,
                  ),
                ),
        )
      ],
    );
  }

  Future<void> LoadHadethFile() async {
    String hadeth_content =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadeth_strings = hadeth_content.split('#');
    hadeth_strings.map((hadeth_string) {
      List<String> hadeth_Lines = hadeth_string.trim().split('\n');
      String Title = hadeth_Lines[0];
      hadeth_Lines.removeAt(0);
      List<String> Content = hadeth_Lines;
      return Hadeth(Hadeth_Name: Title, Hadeth_Content: Content);
    }).toList();
    setState(() {});

  }
}
