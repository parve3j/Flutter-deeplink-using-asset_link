import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),
        actions: [
          IconButton(onPressed: (){
            final String url = 'https://ab333333.web.app/home';

            // Share the link
            Share.share(url);
          }, icon: Icon(Icons.share))
        ],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/details');
            },
            child: Text('Go go to details')),
      ),
    );
  }
}
