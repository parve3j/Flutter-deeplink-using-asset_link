import 'dart:developer';
import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:uni_link/pages/product_details_screen.dart';

class DeepLinkListener extends StatefulWidget {
  const DeepLinkListener({super.key, required this.child});

  final Widget child;

  @override
  State<DeepLinkListener> createState() => _DeepLinkListenerState();
}

class _DeepLinkListenerState extends State<DeepLinkListener> {
  late final AppLinks _appLinks;

  @override
  void initState() {
    super.initState();
    _appLinks = AppLinks();

    _appLinks.uriLinkStream.listen((uri) {
      log('Received deep link: ${uri.toString()}');

      if (!mounted || uri.pathSegments.isEmpty) return;

      String firstSegment = uri.pathSegments.first;
      log('Navigating to: $firstSegment');

      if (firstSegment == 'home') {
        Navigator.of(context).pushNamed('/home');
      } else if (firstSegment == 'details') {
        Navigator.of(context).pushNamed('/details');
      }else if(firstSegment =='product' && uri.pathSegments.length>1){
        String idString = uri.pathSegments[1];
        int? productId = int.tryParse(idString);
        if(productId != null){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> ProductDetailsScreen(id: productId,))
          );
        }
      }
    }, onError: (err) {
      log('Deep link error: $err');
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
