
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
    return Container(
    
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(300),),
    
    
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
                  
                },borderRadius: BorderRadius.circular(300),
                  child: CircleAvatar(
                  radius: 40,
                  foregroundImage: NetworkImage('$image'),
                  ),
                ),
              ),
            ),
          
          // ignore: unnecessary_string_interpolations
          Text('$yourstory',style: TextStyle(color: Colors.white,fontSize: size.height*0.02),)
        ],
      ),
    );
  }
}