import 'package:flutter/material.dart';
import 'package:test_project/voice_assistant.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 255, 147, 147),
                Colors.white
              ])
            ),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
              radius: 40.0,
              child:Text(''),
              ),
              Text('Name/Email'),
            ],
          )),
          const ExpansionTile(
            subtitle: Text('Fashion Mnist Classification'),
            childrenPadding: EdgeInsets.only(left: 20.0),
            title: Text('Image Classification Model'),
          leading: Icon(Icons.image),
          children: [
            ListTile(title: Text('ANN Model'),
            ),
            ListTile(title: Text('CNN Model')),
          ],
          ),
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text('Stock Price Prediction'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VoiceAssistant()),
                  );
                }
                ,),

              const ListTile(
                leading: Icon(Icons.image),
                title: Text('RAG')),
        ],
      ),
    );
  }
}