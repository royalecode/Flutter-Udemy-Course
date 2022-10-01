import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String asset;
  final double borderWidth;
  const Avatar({super.key, required this.size, required this.asset, this.borderWidth = 0});

  @override
  Widget build(BuildContext context) {
    final fromNetwork = asset.startsWith("http://") || asset.startsWith("https://");
    final imageProvider = fromNetwork ? NetworkImage(asset) : AssetImage(asset)
    ;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: imageProvider as ImageProvider,
            fit: BoxFit.cover,
          ),
          border: Border.all(
            width: borderWidth,
            color: Colors.white,
          )),
    );
  }
}
