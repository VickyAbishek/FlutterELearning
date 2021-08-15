import 'package:flutter/material.dart';
import 'package:http_proj/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    // int x = images.length;
    // print( "dsf$x");
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Text(images[index].url);
      },
      
    );
  }
}
