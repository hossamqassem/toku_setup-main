import 'package:flutter/widgets.dart';

class Catgory extends StatelessWidget {
   const Catgory({Key? key, required this. text , required this.color,required this.onTap}) : super(key: key);
final String? text;
final Color? color;
final VoidCallback  onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
                padding: const EdgeInsets.only(left: 24),
                alignment: Alignment.centerLeft,
                height: 65,
                width: double.infinity,
                color:color,
                child:  Text(text!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
    );
  }
}