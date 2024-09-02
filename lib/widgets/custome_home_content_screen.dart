import 'package:flutter/material.dart';
import 'package:national_day_assignment/helper/extension/screen.dart';

class CustomHomeContent extends StatelessWidget {
  const CustomHomeContent({
    super.key,
    required this.onPressed,
  });

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            children: [
              Text(
                'Explore',
                style: TextStyle(
                    fontSize: 42.21,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Text(
                'Saudi arabia !',
                style: TextStyle(
                    fontSize: 42.21,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1C8D21)),
              ),
            ],
          ),
          SizedBox(
            height: context.getHeight() / 11,
          ),
          InkWell(
            onTap: onPressed,
            child: Container(
              width: context.getWidth() / 2,
              height: context.getHeight() / 10,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xffFFFFFF), Color(0xff1C8D21)]),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                child: Text(
                  'Let\'s start',
                  style: TextStyle(
                      fontSize: 42.21,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
