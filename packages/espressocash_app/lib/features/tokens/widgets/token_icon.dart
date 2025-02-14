import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';

import '../../../gen/assets.gen.dart';
import '../token.dart';

class TokenIcon extends StatelessWidget {
  const TokenIcon({
    super.key,
    required this.token,
    required this.size,
  });

  final Token token;
  final double size;

  @override
  Widget build(BuildContext context) {
    final url = token.logoURI;
    final borderRadius = BorderRadius.circular(size / 2);

    return url == '' || url == null
        ? _DefaultIcon(size: size)
        : ClipRRect(
            borderRadius: borderRadius,
            child:
                _TokenIconImage(url: url, cacheKey: token.symbol, size: size),
          );
  }
}

class _TokenIconImage extends StatelessWidget {
  const _TokenIconImage({
    required this.url,
    required this.cacheKey,
    required this.size,
  });

  @override
  Widget build(BuildContext context) => extension(url) == '.svg'
      ? SvgPicture.network(url, width: size, height: size)
      : CachedNetworkImage(
          cacheKey: cacheKey,
          height: size,
          width: size,
          errorWidget: (BuildContext context, String url, dynamic error) =>
              const _DefaultIcon(),
          imageUrl: url,
          errorListener: (_) {},
          imageBuilder: (context, provider) => DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: provider),
            ),
          ),
        );

  final double size;
  final String cacheKey;
  final String url;
}

class _DefaultIcon extends StatelessWidget {
  const _DefaultIcon({this.size});

  @override
  Widget build(BuildContext context) => Image.asset(
        Assets.images.tokenLogo.path,
        width: size,
        height: size,
      );

  final double? size;
}
