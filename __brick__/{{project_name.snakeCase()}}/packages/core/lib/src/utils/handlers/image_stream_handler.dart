import 'dart:async';

import 'package:flutter/material.dart';

class ImageStreamHandler {
  ImageStreamHandler({required this.imageUrl});

  final String imageUrl;
  ImageStream? _imageStream;
  ImageStreamListener? _listener;

  Future<double> getImageAspectRatio() {
    final Completer<double> completer = Completer();

    void onImage(
      final ImageInfo info,
      // ignore: avoid_positional_boolean_parameters
      final bool synchronousCall,
    ) {
      final double aspectRatio = info.image.width / info.image.height;
      completer.complete(aspectRatio);
      dispose();
    }

    void onError(final dynamic error, final StackTrace? stackTrace) {
      completer.completeError(error, stackTrace);
      dispose();
    }

    _listener = ImageStreamListener(onImage, onError: onError);
    _imageStream = NetworkImage(imageUrl).resolve(ImageConfiguration.empty);
    _imageStream!.addListener(_listener!);

    return completer.future;
  }

  void dispose() {
    if (_listener != null && _imageStream != null) {
      _imageStream!.removeListener(_listener!);
      _listener = null;
      _imageStream = null;
    }
  }
}
