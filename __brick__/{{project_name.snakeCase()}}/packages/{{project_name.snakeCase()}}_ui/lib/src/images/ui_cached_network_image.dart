import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}_ui/{{project_name.snakeCase()}}_ui.dart';

class UiCachedNetworkImage extends StatelessWidget {
  const UiCachedNetworkImage({
    required this.imageUrl,
    super.key,
    this.height,
    this.width,
    this.fit,
    this.shimmerColor,
    this.shimmerWidth,
    this.shimmerHeight,
    this.imageBuilder,
    this.alignment,
  });

  final double? height;
  final double? width;
  final double? shimmerWidth;
  final double? shimmerHeight;
  final String imageUrl;
  final Color? shimmerColor;
  final BoxFit? fit;
  final Widget Function(BuildContext, ImageProvider<Object>)? imageBuilder;
  final Alignment? alignment;

  @override
  Widget build(final BuildContext context) => CachedNetworkImage(
        imageUrl: imageUrl,
        fit: fit,
        height: height,
        width: width,
        alignment: Alignment.bottomRight,
        imageBuilder: imageBuilder,
        fadeInDuration: const Duration(seconds: 1),
        errorWidget: (final _, final error, final ___) {
          return Align(
            alignment: Alignment.bottomRight,
            child: context.colorScheme.brightness == Brightness.light
                ? Icon(
                    Icons.error_outline,
                    color: context.colorScheme.error,
                  )
                : Icon(
                    Icons.error_outline,
                    color: context.colorScheme.error,
                  ),
            // TODO: Add placeholder images
            // ? context.theme.images.placeholderLight()
            // : context.theme.images.placeholderDark(),
          );
        },
      );
}
