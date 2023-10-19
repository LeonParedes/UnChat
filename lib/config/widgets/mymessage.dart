import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {

 const MyMessageBubble({super.key});

Widget build(BuildContext context){
 final colors =  Theme.of(context).colorScheme;

 return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        decoration:  BoxDecoration(
          color: colors.primary, borderRadius:  BorderRadius.circular(50)
        ),
        child : const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 10),
               child: Text('soy yo nomas viendo pruebas ',
        style: TextStyle(color: Colors.white),
        ),
        ),
       
      ),
      const SizedBox(height:  10),
    ],
 );
 }

}
class _ImageBubble extends StatelessWidget{
  final String urlGif;

  const _ImageBubble({required this.urlGif});
  Widget build (BuildContext context){
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius:  BorderRadius.circular(20),
      child: Image.network(urlGif,
        width: size.width * .7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context,child, loadingProgress)=> (loadingProgress ==null )
          ? child :
            Container( width: size.width *.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Cargamdo la imagen ...'),
            ),
      ),
    );
  }
}