import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pdf_book_method_channel.dart';

abstract class PdfBookPlatform extends PlatformInterface {
  /// Constructs a PdfBookPlatform.
  PdfBookPlatform() : super(token: _token);

  static final Object _token = Object();

  static PdfBookPlatform _instance = MethodChannelPdfBook();

  /// The default instance of [PdfBookPlatform] to use.
  ///
  /// Defaults to [MethodChannelPdfBook].
  static PdfBookPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PdfBookPlatform] when
  /// they register themselves.
  static set instance(PdfBookPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  showAleartDialog() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
