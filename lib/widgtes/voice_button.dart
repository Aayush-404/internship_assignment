import 'package:flutter/material.dart';

class VoiceButton extends StatelessWidget {
  const VoiceButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
      ),
      child: const Icon(Icons.mic),
    );
  }
}
