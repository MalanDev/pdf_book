import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pdf_book_platform_interface.dart';

/// An implementation of [PdfBookPlatform] that uses method channels.
class MethodChannelPdfBook extends PdfBookPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pdf_book');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  showAleartDialog() async {
    final version = await methodChannel.invokeMethod<String>('showAlert');
    return version;
  }
}
