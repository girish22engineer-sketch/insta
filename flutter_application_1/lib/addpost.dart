import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/mainscreen.dart';
import 'package:get/get.dart';
class Addpost extends StatelessWidget {
  const Addpost({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  Get.to(MainScreen());
                },
              ),
              Spacer(),
              const Text(
                'Add Post',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings_suggest_outlined),
                color: Colors.white,
              ),
            ],
          ),
          
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)),
                ),
                Spacer(),
                Icon(Icons.add_card_sharp,color: Colors.white,),
                Text("Drafts",style: TextStyle(color: Colors.white),),
                Spacer(),
                Icon(Icons.add_box_outlined,color: Colors.white,),
                Text("Template",style: TextStyle(color: Colors.white),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Recent",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down_outlined)
                ),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.copy),color: Colors.white,)
              ],
            ),
          )

      ],
      ),
    );
  }
}
