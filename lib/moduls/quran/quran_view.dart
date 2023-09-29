import 'package:first_islami/moduls/quran/sura_view.dart';
import 'package:first_islami/moduls/quran/widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class quran extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Image.asset("assets/image/quran_image.png"),
          Divider(
            color: theme.primaryColor,
            thickness: 3,
          ),
          Row(
            children: [
              Expanded(
                  child: Text("رقم السورة",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium)),
              Container(
                width: 3,
                height: 25,
                color: theme.primaryColor,
              ),
              Expanded(
                  child: Text(
                "اسم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              )),
            ],
          ),
          Divider(
            color: theme.primaryColor,
            thickness: 3,
            height: 0, //divider يرتبط بالخط بتاع  container علشان الخط بتاع
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, suraView.routeName,
                      arguments: SuraDetails(
                          suraName: suraNames[index],
                          suraNumber: "${index + 1}"));
                },
                child: quranItem(
                  suraNumber: "${index + 1}",
                  suraName: suraNames[index],
                ),
              ),

              itemCount: suraNames.length, // علشان يقف عند اخر سورة
            ),
          ),
        ],
      ),
    );
  }
}

class SuraDetails {
  final String suraName;
  final String suraNumber;

  SuraDetails({required this.suraName, required this.suraNumber});
}
