import 'package:flutter/material.dart';
class Messages extends StatelessWidget {
   final String uname;
      final String dp;
   
   const Messages({super.key,
   required this.uname,
   required this.dp
  });

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(onTap: () {
        
      },
        child: Container(
          child: Row(
            children: [
              InkWell( onTap: () {
                
              },
                child: SizedBox(
                  width: size.width*0.2,
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(dp),
                    radius: 40,
                  ),
                ),
              ),
                SizedBox(
                  width: size.width*0.5,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(uname,style: TextStyle(color: Colors.white,fontSize: size.height*0.02),),
                      Text('sent',style: TextStyle(color: Colors.white,fontSize: size.height*0.02),)
                    ],
                  ),
                 
               ),
               SizedBox(
                width: size.width*0.2,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Colors.white,)))
            ],
          ),
        ),
      ),
    );
  }
}