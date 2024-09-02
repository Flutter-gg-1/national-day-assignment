import 'package:flutter/material.dart';
import 'package:national_day/data_handle/gitt.dart';
import 'package:national_day/data_handle/models/app_model.dart';
import 'package:national_day/page/qust_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {


    if(getIt.get<AppModel>().curnetQusPage != 0 || getIt.get<AppModel>().userAnsList.isNotEmpty){

    
   WidgetsBinding.instance.addPostFrameCallback((_) {
      

       Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
             

              return const QustPage();
            },
          ));
    });

    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(


      body: SizedBox(
        width:  double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
          crossAxisAlignment: CrossAxisAlignment.center,
        
        
          children: [
        
        
            const Text("Explore", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
            const Text("Saudi arabia !",style: TextStyle(fontSize: 40 ,fontWeight: FontWeight.bold , color:  Color(0xff1C8D21))),


           const  SizedBox(height: 70,),


            GestureDetector(

              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {


                  return const QustPage();
                  
                },));
              },
              child: Container(
              
                width: 300,
                height: 100,
              
                decoration:  BoxDecoration(
              
                  borderRadius: BorderRadius.circular(16) ,
              
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xff1C8D21)
                    ]
                  )
                ),
              
                
              
              
                child: const Center(child: Text("Let’s start", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}