


import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class PostsScreen extends StatelessWidget {
  @override
    final String _content = 'http://10.0.2.2:8000/referral-link';
    void _shareContent() {
    Share.share(_content);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 205, 213, 255),
        
        title: Text(
          'Information Page',
        ),
        
      ),
    body:Container(
       color:Colors.blue[100],
        width:double.infinity,
         child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child: Column(
       // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [         
              Container(
                 height: 80.0,     
                child: 
                  Text(
                    'Balance : \n xxxxxxxxxxxxxxxxxxx',
                     style: TextStyle(
                          color:Colors.white,
                          fontSize:30.0,
                        //  backgroundColor:Colors.red,
                        ),
                  ),                          
              ),
              Divider(),
                  Container(
                    height: 80.0,                  
                    child: 
                      Text(
                        'Referral Code: \n xxxxxxxxxxxxxxxxxxx',
                         style: TextStyle(
                              color:Colors.white,
                              fontSize:30.0,
                            //  backgroundColor:Colors.green,
                              ),
                      ),               
                  ),
                Divider(),            
                 Container(
                    height: 80.0,
                    //color:Colors.blue,
                   child: 
                     Text(
                       'product name : \n xxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                             color:Colors.white,
                             fontSize:30.0,
//backgroundColor:Colors.blue,
                             ),
                     ),
                   
                 ),
               Divider(),           
                  Container(
                    height: 80.0,
                    //color:Colors.blue,
                   child: 
                     Text(
                       'Date of Purchase : \n xxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                             color:Colors.white,
                             fontSize:30.0,
//backgroundColor:Colors.blue,
                             ),
                     ),                   
                 ),
                 Divider(),
                    Container(
                    height: 80.0,
                    //color:Colors.blue,
                   child: 
                     Text(
                       'Course Price : \n xxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                             color:Colors.white,
                             fontSize:30.0,
//backgroundColor:Colors.blue,
                             ),
                     ),                  
                 ),
                 Divider(),
                    Container(
                    height: 80.0,
                    //color:Colors.blue,
                   child: 
                     Text(
                       'Profit Ratio : \n xxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                             color:Colors.white,
                             fontSize:30.0,
//backgroundColor:Colors.blue,
                             ),
                     ),
               
                 ),
                 Divider(),
                    Container(
                    height: 80.0,
                    //color:Colors.blue,
                   child: 
                     Text(
                       'profit : \n xxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(
                             color:Colors.white,
                             fontSize:30.0,
//backgroundColor:Colors.blue,
                             ),
                     ),
                   
                 ),
                 Divider(),
  
                   Center(
                child:  ElevatedButton.icon(
                onPressed: _shareContent,
                  style: ElevatedButton.styleFrom(
                   // primary: Colors.purple[100],
                   primary:  Color.fromARGB(255, 205, 213, 255),
                  ),
                icon: const Icon(Icons.share,),
                
                label: const Text('Share Referral Code'))
  
)
                
              
          
        ],
      ),
    ),
     ),
    )
    );
  }
  
}
void Dvider(){
   Divider(
            height: 15,
            thickness: 5,
            //indent: 10,
            endIndent: 0,
            color: Color.fromARGB(87, 96, 125, 139),
          );
}


