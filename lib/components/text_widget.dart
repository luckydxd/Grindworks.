import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  final String text;
  int fontSize;
  bool isUnderLine;
  final Color color;
  TextWidget({super.key, required this.text,required this.fontSize, this.isUnderLine=false, this.color=const Color(0xFF000000)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 3, // space between underline and text
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: isUnderLine?const Color(0xFF363f93):const Color(0xFFffffff),  // Text colour here
            width: 1.0, // Underline width
          ))
      ),

      child: Text(text, style: TextStyle(
        fontSize:fontSize.toDouble(),fontFamily: "Avenir",
        fontWeight: FontWeight.w900,
        color:color,

      ),),
    );
  }
}
