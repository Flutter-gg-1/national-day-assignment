import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:national_day/data_handle/gitt.dart';
import 'package:national_day/data_handle/models/app_model.dart';
import 'package:national_day/data_handle/models/qust_model.dart';
import 'package:national_day/widget/contenu_buuton_widget.dart';
import 'package:national_day/widget/qust_card_widget.dart';

class QustPage extends StatefulWidget {
  const QustPage({super.key});

  @override
  State<QustPage> createState() => _QustPageState();
}

class _QustPageState extends State<QustPage> {
  List<QustModel> qustList = getIt.get<AppModel>().qustList;

  Color aColor = const Color(0xffC9FBB1);
  Color bColor = const Color(0xffC9FBB1);
  Color cColor = const Color(0xffC9FBB1);
  Color dColor = const Color(0xffC9FBB1);

  bool userAns = false;

  int curnetQusPage = getIt.get<AppModel>().curnetQusPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.center,
                  qustList[curnetQusPage].question,
                  style: const TextStyle(
                      fontSize: 21, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 40,
            ),
            QustCardWidget(
              onTap: () {
                if (userAns == false) {
                  userAns = true;

                  if (getIt.get<AppModel>().checkAns("A")) {
                    aColor = const Color(0xff1C8D21);
                  } else {
                    aColor = const Color(0xffF0676F);
                  }

                  setState(() {});
                }
              },
              color: aColor,
              qusNumber: "1",
              tex: qustList[curnetQusPage].a,
            ),
            const SizedBox(
              height: 20,
            ),
            QustCardWidget(
              onTap: () {
                if (userAns == false) {
                  userAns = true;

                  if (getIt.get<AppModel>().checkAns("B")) {
                    bColor = const Color(0xff1C8D21);
                  } else {
                    bColor = const Color(0xffF0676F);
                  }

                  setState(() {});
                }
              },
              color: bColor,
              qusNumber: "2",
              tex: qustList[curnetQusPage].b,
            ),
            const SizedBox(
              height: 20,
            ),
            QustCardWidget(
              onTap: () {
                if (userAns == false) {
                  userAns = true;

                  if (getIt.get<AppModel>().checkAns("C")) {
                    cColor = const Color(0xff1C8D21);
                  } else {
                    cColor = const Color(0xffF0676F);
                  }

                  setState(() {});
                }
              },
              color: cColor,
              qusNumber: "3",
              tex: qustList[curnetQusPage].c,
            ),
            const SizedBox(
              height: 20,
            ),
            QustCardWidget(
              onTap: () {
                if (userAns == false) {
                  userAns = true;

                  if (getIt.get<AppModel>().checkAns("D")) {
                    dColor = const Color(0xff1C8D21);
                  } else {
                    dColor = const Color(0xffF0676F);
                  }

                  setState(() {});
                }
              },
              color: dColor,
              qusNumber: "4",
              tex: qustList[curnetQusPage].d,
            ),
            const SizedBox(
              height: 60,
            ),
            ContenuBuutonWidget(
              onTap: () {
                if (userAns == true) {
                  if (curnetQusPage != 9) {
                    userAns = false;

                    aColor = const Color(0xffC9FBB1);
                    bColor = const Color(0xffC9FBB1);
                    cColor = const Color(0xffC9FBB1);
                    dColor = const Color(0xffC9FBB1);

                     getIt.get<AppModel>().curnetQusPage =   ++curnetQusPage;
                  }

                  setState(() {});
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
