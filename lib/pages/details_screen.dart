import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen'),
        actions: [
          IconButton(onPressed: (){
            final String url = 'https://ab333333.web.app/details';
            // Share the link
            Share.share(url);
          }, icon: Icon(Icons.share))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final String url = "https://ab333333.web.app/product/123";
            Share.share(url);
          },
          child: Text('Tap to see the details'),
        ),
      ),
    );
  }
}
