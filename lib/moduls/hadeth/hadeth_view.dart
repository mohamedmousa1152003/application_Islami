import 'package:first_islami/moduls/hadeth/hadeth_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class hadeth extends StatefulWidget {
  @override
  State<hadeth> createState() => _hadethState();
}

class _hadethState extends State<hadeth> {
  List<HadethContent> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethContent.isEmpty) readfiel(); //function to read hadeth

    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image/ahadeth_image.png"),
          Divider(
            color: theme.primaryColor,
            thickness: 3,
          ),
          Text(
            "الأحاديث",
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          Divider(
            color: theme.primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, hadethDetails.routeName,
                        arguments: HadethContent(
                            title: allHadethContent[index].title,
                            content: allHadethContent[index].content));
                  },
                  child: Text(allHadethContent[index].title,
                      textAlign: TextAlign.center)),
              separatorBuilder: (context, index) => Divider(
                color: theme.primaryColor,
                thickness: 1.5,
                indent: 30,
                endIndent: 30,
              ),
              itemCount: allHadethContent.length,
            ),
          )
        ],
      ),
    );
  }

  readfiel() async {
    String text = await rootBundle.loadString("assets/fiels/ahadeth.txt");
    //print(allHadeth); //علشان اشوف الاحاديث انضافة ولا لا

    // splite
    List<String> allHadeth = text.split("#");

    // To read title and contect

// as to loop to move all list
    for (int i = 0; i < allHadeth.length; i++) {
      String singlehadeth = allHadeth[i].trim();

      ///as to delete space

      int indexOfFirstline =
          singlehadeth.indexOf("\n"); // \n علشان يجيب عدد الحروف لحد اول

      String title = singlehadeth.substring(0,
          indexOfFirstline); // علشان امسح من اول البدايه لحد النهايه اللي هي تعتبر العنوان
      //title  دلوقتي بيحمل العنوان اللي هو الحديث الاول
      String content = singlehadeth.substring(indexOfFirstline + 1);
      HadethContent hadethContent =
          HadethContent(title: title, content: content);

      setState(() {
        allHadethContent.add(hadethContent);
      });
    }
  }
}

//علشان اقدار ابعت لي
class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});
}
