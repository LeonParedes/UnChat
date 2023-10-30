import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segunda_api/presentation/widgets/chat/hermessage.dart';
import 'package:segunda_api/presentation/widgets/chat/mymessage.dart';
import '../../shared/message_field_box.dart';
import '/../Model/dto/message.dart';
import '../../widgets/chat/message_bubble.dart';
import '../../providers/chat_provider.dart';


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
    body: ChatView(),    
    );
  }
}
class ChatView extends StatelessWidget{
  const ChatView({super.key});

Widget build(BuildContext context) {
   final chatProvider = context.watch<ChatProvider>();
   return 
   
   SafeArea(  child: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 10,
          top: 10,
          end: 10,
          bottom: 20
        ),
          child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble(
                          message: message.text, urlGif: message.imageUrl)
                      : MyMessageBubble(message: message.text);
                },
              ),
            ),
            MessageFieldBox(onValue: chatProvider.sendMessage),
          ],
          
          ),
        
        ),
    );
  }
  }