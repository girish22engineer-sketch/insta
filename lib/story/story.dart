
import 'package:flutter/material.dart';
class Story extends StatelessWidget {
  final String yourstory;
  final String image;
  const Story({super.key,
  required this.yourstory,
  required this.image
  });

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      
      
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(300),),
      
      
        child: 
        Column(
          children: [
             Container(
              
              
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.orange)),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(onTap: () {
                    
                  },
                    child: 
                    CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('$image' ),
                    ),
                  ),
                ),
              ),
            
            // ignore: unnecessary_string_interpolations
            Text('$yourstory',style: TextStyle(color: Colors.white,fontSize: size.height*0.02),)
          ],
        ),
      ),
    );
  }
}