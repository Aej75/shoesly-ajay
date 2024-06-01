import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class AppCachedNetworkImageView extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit? boxFit;
  final Color? color;
  const AppCachedNetworkImageView(
      {super.key,
      required this.url,
      this.height,
      this.width,
      this.boxFit,
      this.color});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      color: color,
      placeholder: (context, url) => const SizedBox(
          width: 40, height: 40, child: CupertinoActivityIndicator()),
      errorWidget: (context, url, error) => const SizedBox(),
      fit: boxFit,
    );
  }
}
