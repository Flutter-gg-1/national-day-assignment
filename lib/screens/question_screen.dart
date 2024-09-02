import 'dart:developer';

import 'package:flutter/material.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("question here", style: TextStyle(fontSize: 23.01, fontWeight: FontWeight.w700),),
              SizedBox(height: 44,),
              Column(
                children: List.generate(4, (index){
                  return Column(
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () => log((index+1).toString()),
                        child: Container(
                          width: 312.78,
                          height: 37.11,
                          padding: EdgeInsets.symmetric(horizontal: 15.9),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xffc9fbb1), width: 0.82),
                            borderRadius: BorderRadius.circular(8.16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jeddah", style: TextStyle(fontSize: 8.16, fontWeight: FontWeight.w400,color: Colors.black),),
                              Container(
                                width: 16.31,
                                height: 16.31,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(border: Border.all(color: Color(0xffc9fbb1), width: 0.82),borderRadius: BorderRadius.circular(3.26)),
                                child: Text((index+1).toString(), style: TextStyle(fontSize: 8.16, fontWeight: FontWeight.w700,color: Color(0xffc9fbb1)),),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.26,)
                    ],
                  );
                }),
              ),
              SizedBox(height: 69.23,),
              Container(
                width: 201,
                height: 81.44,
                decoration: BoxDecoration(
                  color: Color(0xff1c8d21),
                  borderRadius: BorderRadius.circular(17.33)
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text("Continue", style: TextStyle(fontSize: 22.53, fontWeight: FontWeight.w700, color: Colors.white),)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}