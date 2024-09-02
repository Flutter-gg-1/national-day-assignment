import 'package:flutter/material.dart';
import 'package:national_day_quiz/utils/extensions/screen.dart';

class AnswerTile extends StatelessWidget {
  final String option;
  final bool? isCorrect;
  final int index;
  
  final Function()? onTap;
  const AnswerTile(
      {super.key,
      required this.onTap,
      required this.option,
      required this.isCorrect,
      required  this.index
      });

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [const Color(0xffC9FBB1),const Color(0xff1C8D21), const Color(0xffF0676F) ];
    final Color color;
    if(isCorrect == null){
      color = colors[0];
    }else if(isCorrect == true){
      color = colors[1];
    }else{
      color = colors[2];
    }
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: context.getHeight() / 22.74,
        width: context.getWidth() / 1.24,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.16),
            border: Border.all(color:  color),
            color: Colors.white,
            boxShadow:  [
              BoxShadow(
                  color: color,
                  blurStyle: BlurStyle.inner,
                  offset: Offset(2, 2))
            ]),
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: -3),
              onTap: onTap,
              shape: RoundedRectangleBorder(
                  side:  BorderSide(width: 0.82, color: color),
                  borderRadius: BorderRadius.circular(8.16)),
              title: Text(option),
              trailing: Container(
                height: 16.31,
                width: 16.31,
                decoration: BoxDecoration(
                    border: Border.all(color:color)),
                child:  Center(child: Text('${index +1}')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
