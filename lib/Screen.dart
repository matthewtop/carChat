import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  Widget _buildTextComposer(){
    return Row(
      children: [
        const Expanded(
          child: TextField(
            decoration: InputDecoration.collapsed(hintText: "Send"),
          ),
          ),
          IconButton( 
            icon: const Icon(Icons.send),
            onPressed: () {},
            ),
    ],
      ).px8();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CarChat",)),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.cardColor,),
            child: _buildTextComposer(),
            )
        ],
      ),
    );
  }
}