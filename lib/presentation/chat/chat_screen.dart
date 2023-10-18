import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget{
  

  
  Widget build(BuildContext context) {
   return Scaffold(
    appBar:  AppBar(  
      leading:  const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://image.enjoymovie.net/0lCFKCq3DeQl8BALK7mR59-Itf4=/256x256/smart/core/p/3OWy6o6vwM.jpg'),
        ),
      ),      
      title: const Text('A nya'),
      centerTitle: false,
   
    ),
    body: _ChatView(),    
    );
  }
}
class _ChatView extends StatelessWidget{

Widget build(BuildContext context) {
   return SafeArea(
    child: Padding(padding: const EdgeInsets.all(4.0),
    child: Column(
      children: [
        Expanded(child: Container(color: Colors.tealAccent[200])),
      const Text("Holis"),
      const Text("Mundo")

    ]),)
    
    );


  }
  }