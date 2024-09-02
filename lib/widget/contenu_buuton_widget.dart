import 'package:flutter/material.dart';

class ContenuBuutonWidget extends StatelessWidget {
  const ContenuBuutonWidget({
    super.key, required this.onTap, 
  });



  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap ,
      
      child: Container(
      
        width: 200,
        height: 80,
      
        decoration: BoxDecoration(
      
          color: const Color(0xff1C8D21),
          borderRadius: BorderRadius.circular(16)
        ),
      
        child: const Center(child: Text("Continue", style: TextStyle( fontSize: 22,color: Colors.white, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

