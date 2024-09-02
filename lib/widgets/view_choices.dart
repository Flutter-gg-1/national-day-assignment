import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:saudi_assignment/data/questions.dart';

class ViewChoices extends StatelessWidget {
  // final List<String> choices;
  final Function(int)? onChoice;
  const ViewChoices({super.key, required this.onChoice});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(GetIt.I.get<Questions>().getCurrentChoices().length, (index){
        return Column(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              onTap: GetIt.I.get<Questions>().isClicked ? null : (){onChoice!(index); GetIt.I.get<Questions>().isClicked=true;},
              child: Container(
                width: 312.78,
                height: 37.11,
                padding: const EdgeInsets.symmetric(horizontal: 15.9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: GetIt.I.get<Questions>().choicesColors[index], width: 0.82),
                  borderRadius: BorderRadius.circular(8.16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      GetIt.I.get<Questions>().getCurrentChoices()[index],
                      style: const TextStyle(
                        fontSize: 8.16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      )
                    ),
                    Container(
                      width: 16.31,
                      height: 16.31,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffc9fbb1), width: 0.82),
                        borderRadius: BorderRadius.circular(3.26)
                      ),
                      child: Text(
                        (index+1).toString(),
                        style: const TextStyle(
                          fontSize: 8.16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffc9fbb1)
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.26,)
          ],
        );
      }),
    );
  }
}